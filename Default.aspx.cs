using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : Page
{
    // Retrieve connection string from Web.config
    string connString = ConfigurationManager.ConnectionStrings["CyborgDBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Force both buttons to always do a FULL postback, even inside the UpdatePanel.
        // This is critical so that Response.Redirect works correctly for both override and logout.
        ScriptManager.GetCurrent(this).RegisterPostBackControl(btnInitialize);
        ScriptManager.GetCurrent(this).RegisterPostBackControl(btnLogoutHidden);
        // Check if the current session has admin privileges
        if (Session["IsAdmin"] != null && (bool)Session["IsAdmin"] == true)
        {
            // User is admin: Hide the normal contact form, show admin sections
            phContactForm.Visible = false;
            phAdminTerminal.Visible = true;
            phClassifiedData.Visible = true;

            // Load data from DB into the Repeater if not a PostBack (or re-bind as needed)
            if (!IsPostBack)
            {
                LoadTransmissions();
            }
        }
        else
        {
            // User is normal: Ensure contact form is visible, admin sections hidden
            phContactForm.Visible = true;
            phAdminTerminal.Visible = false;
            phClassifiedData.Visible = false;
        }
    }

    private void LoadTransmissions()
    {
        using (SqlConnection conn = new SqlConnection(connString))
        {
            // Fetch records from highest Id to lowest to see newest first
            string query = "SELECT Timestamp, Alias, Directive, TransmissionText FROM Transmissions ORDER BY Id DESC";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    rptTransmissions.DataSource = reader;
                    rptTransmissions.DataBind();
                }
            }
        }
    }

    protected void btnInitialize_Click(object sender, EventArgs e)
    {
        // Clear any previous status message
        lblStatusMessage.Text = "";

        // Read the Encrypted Transmission field
        string transmissionCommand = txtTransmission.Text.Trim();

        // Check for the secret hacker override command
        if (transmissionCommand == "sudo override -auth director")
        {
            // Set session variable
            Session["IsAdmin"] = true;
            
            // Reload page to apply changes
            Response.Redirect(Request.RawUrl);
        }
        else
        {
            // Safety Checks: Ensure fields are not empty
            if (string.IsNullOrWhiteSpace(txtAlias.Text) || 
                string.IsNullOrWhiteSpace(txtCommLink.Text) || 
                string.IsNullOrWhiteSpace(txtTransmission.Text))
            {
                lblStatusMessage.Text = "&gt; ERROR: INCOMPLETE DATA. ALL FIELDS REQUIRED.";
                lblStatusMessage.ForeColor = System.Drawing.Color.Red;
                return; // Stop execution here
            }

            // Normal message submission behavior: Insert into Database!
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "INSERT INTO Transmissions (Alias, CommLink, Directive, TransmissionText) VALUES (@Alias, @CommLink, @Directive, @Text)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Alias", txtAlias.Text.Trim());
                    cmd.Parameters.AddWithValue("@CommLink", txtCommLink.Text.Trim());
                    cmd.Parameters.AddWithValue("@Directive", ddlDirective.SelectedValue);
                    cmd.Parameters.AddWithValue("@Text", txtTransmission.Text.Trim());

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Clear the fields after successful submission
            txtAlias.Text = "";
            txtCommLink.Text = "";
            txtTransmission.Text = "";
            ddlDirective.SelectedIndex = 0;
            
            // Show Success Message
            lblStatusMessage.Text = "&gt; TRANSMISSION SECURED. THANK YOU, OPERATIVE.";
            lblStatusMessage.ForeColor = System.Drawing.Color.LimeGreen;
        }
    }

    protected void btnLogoutHidden_Click(object sender, EventArgs e)
    {
        // Destroy the session completely
        Session.Abandon();
        Session.Clear();
        
        // Reload page to return to normal user view
        Response.Redirect(Request.RawUrl);
    }
}
