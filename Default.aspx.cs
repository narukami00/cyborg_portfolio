using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Check if the current session has admin privileges
        if (Session["IsAdmin"] != null && (bool)Session["IsAdmin"] == true)
        {
            // User is admin: Hide the normal contact form, show admin sections
            phContactForm.Visible = false;
            phAdminTerminal.Visible = true;
            phClassifiedData.Visible = true;
        }
        else
        {
            // User is normal: Ensure contact form is visible, admin sections hidden
            phContactForm.Visible = true;
            phAdminTerminal.Visible = false;
            phClassifiedData.Visible = false;
        }
    }

    protected void btnInitialize_Click(object sender, EventArgs e)
    {
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
            // Normal message submission behavior:
            // For now, since there is no DB, we just clear the fields to simulate a successful send.
            txtAlias.Text = "";
            txtCommLink.Text = "";
            txtTransmission.Text = "";
            ddlDirective.SelectedIndex = 0;
            
            // Optional: You could show a success label here later.
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
