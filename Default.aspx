<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback="true" %>
<!doctype html>
<html lang="en">
  <head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;600;700;800&family=Share+Tech+Mono&display=swap"
    />

    <link rel="stylesheet" href="style.css?v=20260502-6" />
    <script src="app.js?v=20260502-1" defer></script>
    <title>CYBORG | KUET Cyber Gaming Club</title>
  </head>
  <body>
    <form id="form1" runat="server">
    <header class="navbar">
      <div class="container nav-wrap">
        <a href="#home" class="brand">CYBORG</a>
        <button
          type="button"
          class="nav-toggle"
          aria-controls="primary-navigation"
          aria-expanded="false"
          aria-label="Open navigation menu"
          data-nav-toggle
        >
          <span></span>
          <span></span>
          <span></span>
        </button>
        <nav class="primary-nav" id="primary-navigation" data-nav-menu>
          <ul class="nav-links">
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#events">Events</a></li>
            <li><a href="#games">Games</a></li>
            <li><a href="#team">Team</a></li>
            <li><a href="#gallery">Gallery</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <a href="#contact" class="btn btn-outline btn-small nav-panel-cta">JOIN US</a>
        </nav>
        <a href="#contact" class="btn btn-outline btn-small">JOIN US</a>
      </div>
    </header>

    <main>
      <!-- The Hero Section : Start-->

      <section id="home" class="hero">
        <div class="container hero-content visible delay-1">
          <h1 class="hero-title">CYBORG</h1>
          <p class="hero-tagline">WE GAME, THEREFORE WE ARE</p>
          <div class="cta-row">
            <a href="#events" class="btn btn-solid">EXPLORE</a>
            <a href="#about" class="btn btn-outline">ABOUT US</a>
          </div>
        </div>
      </section>

      <!-- The Hero Section : End-->

      <!-- The About Section : Start-->

      <section id="about" class="section about-section visible delay-2">
        <div class="container">
          <div class="about-shell">
            <div class="about-headline">
              <p class="about-kicker">COMPETITIVE DNA</p>
              <h2 class="section-title left">ABOUT CYBORG</h2>
              <p class="about-lead">
                KUET CYBORG is where campus gamers level up from casual queues
                to organized competition. We build squads, host intense matches,
                and create a team-first culture where strategy, consistency, and
                raw mechanical skill are sharpened every week.
              </p>
            </div>

            <div class="about-content-grid">
              <article class="about-feature-card">
                <div
                  class="about-feature-bg"
                  style="
                    background-image: url(&quot;https://i.pcmag.com/imagery/lineups/06dxdkd5h3MmSKAaMczRpbQ-1..v1569492889.jpg&quot;);
                  "
                ></div>
                <div class="about-feature-content">
                  <span class="badge">LIVE CULTURE</span>
                  <h3>FROM CAMPUS SCRIMS TO BIG STAGE TOURNAMENTS</h3>
                </div>
              </article>

              <div class="about-stat-track">
                <article class="stat-card">
                  <h3>100+</h3>
                  <p>ACTIVE MEMBERS</p>
                </article>
                <article class="stat-card">
                  <h3>2021</h3>
                  <p>FOUNDED</p>
                </article>
                <article class="stat-card">
                  <h3>WEEKLY</h3>
                  <p>SCRIMS &amp; PRACTICE</p>
                </article>
                <article class="stat-card">
                  <h3>MULTI-TITLE</h3>
                  <p>FPS | SPORTS | MOBILE</p>
                </article>
              </div>
            </div>

            <div class="why-join-wrap">
              <h3 class="why-join-title">WHY JOIN CYBORG</h3>
              <div class="why-join-grid">
                <article class="why-card">
                  <h4>Structured Growth</h4>
                  <p>
                    Play with purpose through consistent team drills, scrims,
                    and role-based improvement.
                  </p>
                </article>
                <article class="why-card">
                  <h4>Real Tournament Exposure</h4>
                  <p>
                    Compete in campus and inter-campus events that simulate real
                    esports pressure.
                  </p>
                </article>
                <article class="why-card">
                  <h4>Strong Community</h4>
                  <p>
                    Join a focused, supportive player base across departments
                    with a shared grind mindset.
                  </p>
                </article>
                <article class="why-card">
                  <h4>Leadership Pipeline</h4>
                  <p>
                    Contribute as strategist, organizer, caster, or creator and
                    build impact beyond gameplay.
                  </p>
                </article>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- The About Section : End-->

      <!-- The Events Section : Start-->

      <section id="events" class="section visible delay-3">
        <div class="container">
          <p class="section-kicker">MISSION CALENDAR</p>
          <h2 class="section-title">EVENTS</h2>
          <div class="event-grid">
            <!-- Featured Upcoming Event (Row 1) -->
            <article class="event-card featured">
              <div
                class="event-bg"
                style="
                  background-image: url(&quot;https://c.files.bbci.co.uk/266E/production/_85983890_fwvspng.jpg&quot;);
                "
              ></div>
              <div class="event-content">
                <span class="badge">UPCOMING</span>
                <h3>INTRA-KUET ESPORTS CHAMPIONSHIP</h3>
                <p>
                  The biggest competitive stage at KUET. Open to all students.
                  Registration is now live for Valorant, FIFA, and CS2.
                </p>
                <!-- Added Action Button -->
                <a
                  href="#contact"
                  class="btn btn-solid"
                  style="margin-top: 20px"
                  >REGISTER NOW</a
                >
              </div>
            </article>

            <!-- Past Event (Row 2, Col 1) -->
            <article class="event-card">
              <div
                class="event-bg"
                style="
                  background-image: url(&quot;https://images.unsplash.com/photo-1542751371-adc38448a05e?auto=format&fit=crop&w=800&q=80&quot;);
                "
              ></div>
              <div class="event-content">
                <span class="badge">PAST</span>
                <h3>CYBERTRON FIESTA</h3>
                <p>Annual flagship tournament with a 12,000 BDT prize pool.</p>
              </div>
            </article>

            <!-- Ongoing Event (Row 2, Col 2) -->
            <article class="event-card">
              <div
                class="event-bg"
                style="
                  background-image: url(&quot;https://images.unsplash.com/photo-1511512578047-dfb367046420?auto=format&fit=crop&w=800&q=80&quot;);
                "
              ></div>
              <div class="event-content">
                <span class="badge">ONGOING</span>
                <h3>OPEN SCRIMS</h3>
                <p>Regular practice lobbies for community members.</p>
              </div>
            </article>
          </div>
        </div>
      </section>

      <!-- The Events Section : End-->

      <!-- The Games Section : Start-->

      <section id="games" class="section visible delay-4">
        <div class="container">
          <p class="section-kicker">ACTIVE TITLE POOL</p>
          <h2 class="section-title">FEATURED TITLES</h2>
          <div class="games-grid">
            <!-- CS2 -->
            <article class="game-card">
              <div
                class="game-poster"
                style="
                  background-image: url(&quot;https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/CS2_Cover_Art.jpg/250px-CS2_Cover_Art.jpg&quot;);
                "
              ></div>
              <div class="game-info">
                <span class="game-tag">PC</span>
                <h3>COUNTER-STRIKE 2</h3>
                <p>Tactical FPS</p>
              </div>
            </article>

            <!-- Valorant -->
            <article class="game-card">
              <div
                class="game-poster"
                style="
                  background-image: url(&quot;https://platform.theverge.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/19884649/VALORANT_Jett_Red_1_1.jpg?quality=90&strip=all&crop=7.8125,0,84.375,100&quot;);
                "
              ></div>
              <div class="game-info">
                <span class="game-tag">PC</span>
                <h3>VALORANT</h3>
                <p>Tactical FPS</p>
              </div>
            </article>

            <!-- NFS -->
            <article class="game-card">
              <div
                class="game-poster"
                style="
                  background-image: url(&quot;https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/Need_for_Speed_Most_Wanted_Box_Art.jpg/250px-Need_for_Speed_Most_Wanted_Box_Art.jpg&quot;);
                "
              ></div>
              <div class="game-info">
                <span class="game-tag">PC</span>
                <h3>NFS MOST WANTED</h3>
                <p>Racing</p>
              </div>
            </article>

            <!-- PUBG -->
            <article class="game-card">
              <div
                class="game-poster"
                style="
                  background-image: url(&quot;https://cdn1.epicgames.com/spt-assets/53ec4985296b4facbe3a8d8d019afba9/pubg-battlegrounds-16v1j.jpg&quot;);
                "
              ></div>
              <div class="game-info">
                <span class="game-tag">PC / MOBILE</span>
                <h3>PUBG</h3>
                <p>Battle Royale</p>
              </div>
            </article>

            <!-- FIFA -->
            <article class="game-card">
              <div
                class="game-poster"
                style="
                  background-image: url(&quot;https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2669320/86a267ec44fc57124127eba46f25120813374317/capsule_616x353.jpg?t=1774891371&quot;);
                "
              ></div>
              <div class="game-info">
                <span class="game-tag">PC / CONSOLE</span>
                <h3>FIFA SERIES</h3>
                <p>Sports</p>
              </div>
            </article>

            <!-- Clash Royale -->
            <article class="game-card">
              <div
                class="game-poster"
                style="
                  background-image: url(&quot;https://waywardstrategy.com/wp-content/uploads/2016/12/clash-royale-2.jpg?w=1920&h=1080&crop=1&quot;);
                "
              ></div>
              <div class="game-info">
                <span class="game-tag">MOBILE</span>
                <h3>CLASH ROYALE</h3>
                <p>Strategy</p>
              </div>
            </article>
          </div>
        </div>
      </section>

      <!-- The Games Section : End-->

      <!-- The Team Section : Start-->

      <section id="team" class="section visible delay-5">
        <div class="container">
          <p class="section-kicker">SQUAD LINEUP</p>
          <h2 class="section-title">THE ROSTER</h2>
          <div class="roster-accordion">
            <!-- Player 1 -->
            <div
              class="roster-panel active"
              style="
                background-image: url(&quot;https://platform.theverge.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/25524871/modern_warfare_3_graphic_price.jpg?quality=90&strip=all&crop=7.8125,0,84.375,100&quot;);
              "
            >
              <img src="assets/1.png" alt="Member 1" class="character-cutout" />
              <div class="panel-content">
                <div class="role-badge">PRESIDENT</div>
                <h3><span class="real-name">NIYAMUL KABIR</span></h3>
                <h2 class="ign">"THE_VARIANT"</h2>
                <div class="social-row">
                  <a href="#">DISCORD</a>
                  <a href="#">STEAM</a>
                </div>
              </div>
            </div>

            <!-- Player 2 -->
            <div
              class="roster-panel"
              style="
                background-image: url(&quot;https://play-lh.googleusercontent.com/UOJ0N42bDu2lUbZIx4n9UCnHtnY5IEyG1jOLXByCbbCvi6wammxVR4XC9endWA5rAA=w900-rw&quot;);
              "
            >
              <img src="assets/2.png" alt="Member 2" class="character-cutout" />
              <div class="panel-content">
                <div class="role-badge">VICE PRESIDENT</div>
                <h3><span class="real-name">KHALID AHMED</span></h3>
                <h2 class="ign">"CLASHER"</h2>
                <div class="social-row">
                  <a href="#">DISCORD</a>
                  <a href="#">STEAM</a>
                </div>
              </div>
            </div>

            <!-- Player 3 -->
            <div
              class="roster-panel"
              style="
                background-image: url(&quot;https://www.sportspro.com/wp-content/uploads/2024/10/eFootball-HOZ.jpg&quot;);
              "
            >
              <img src="assets/3.png" alt="Member 3" class="character-cutout" />
              <div class="panel-content">
                <div class="role-badge">GENERAL SEC.</div>
                <h3><span class="real-name">MD SULAIMAN</span></h3>
                <h2 class="ign">"THE_KING"</h2>
                <div class="social-row">
                  <a href="#">DISCORD</a>
                  <a href="#">STEAM</a>
                </div>
              </div>
            </div>

            <!-- Player 4 -->
            <div
              class="roster-panel"
              style="
                background-image: url(&quot;https://store-images.s-microsoft.com/image/apps.8294.69435230515002378.477c7a96-5d17-45ec-95c2-a2739146b68d.fd377b26-2212-4834-b9f4-b14e17f411ec?h=862&format=jpg&quot;);
              "
            >
              <img src="assets/4.png" alt="Member 4" class="character-cutout" />
              <div class="panel-content">
                <div class="role-badge">TREASURER</div>
                <h3><span class="real-name">ASIF ISTIAQ</span></h3>
                <h2 class="ign">"BIG_BOSS"</h2>
                <div class="social-row">
                  <a href="#">DISCORD</a>
                  <a href="#">STEAM</a>
                </div>
              </div>
            </div>

            <!-- Player 5 -->
            <div
              class="roster-panel"
              style="
                background-image: url(&quot;https://www.bumpypitch.com/cdn/shop/articles/ronaldo-fifa-19-cover.jpg?v=1534268943&quot;);
              "
            >
              <img src="assets/5.png" alt="Member 5" class="character-cutout" />
              <div class="panel-content">
                <div class="role-badge">COORD.</div>
                <h3><span class="real-name">ARIFUL HRIDOY</span></h3>
                <h2 class="ign">"FIFA_LORD"</h2>
                <div class="social-row">
                  <a href="#">DISCORD</a>
                  <a href="#">STEAM</a>
                </div>
              </div>
            </div>

            <!-- Player 6 -->
            <div
              class="roster-panel"
              style="
                background-image: url(&quot;https://static0.polygonimages.com/wordpress/wp-content/uploads/2025/08/33-1_sanhok_destruction_kv.jpg?w=1600&h=900&fit=crop&quot;);
              "
            >
              <img src="assets/6.png" alt="Member 6" class="character-cutout" />
              <div class="panel-content">
                <div class="role-badge">MODERATOR</div>
                <h3><span class="real-name">UTSA ROY</span></h3>
                <h2 class="ign">"WATCH_DOG"</h2>
                <div class="social-row">
                  <a href="#">DISCORD</a>
                  <a href="#">STEAM</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- The Team Section : End-->

      <!-- The Gallery Section : Start-->

      <section id="gallery" class="section gallery-section visible delay-5">
        <div class="container">
          <div class="gallery-head">
            <p class="gallery-kicker">ARCHIVE // MOMENTS THAT BUILT CYBORG</p>
            <h2 class="section-title left">GALLERY</h2>
            <p class="gallery-intro">
              A visual archive of matchday pressure, campus energy, and the
              moments that shaped the club.
            </p>
          </div>

          <div class="gallery-showcase">
            <article class="gallery-hero" data-gallery-hero>
              <div
                class="gallery-hero-slide is-active"
                data-gallery-slide
                data-gallery-caption="A sea of supporters turned the arena into a wall of noise."
                style="
                  background-image: url(&quot;https://preview.redd.it/the-2025-honor-of-kings-kpl-grand-finals-sets-new-guinness-v0-vh34wb3wz00g1.jpeg?width=640&crop=smart&auto=webp&s=483c3fc75c30096b48482bde8b9f1bc0fc923997&quot;);
                "
              ></div>
              <div
                class="gallery-hero-slide"
                data-gallery-slide
                data-gallery-caption="The squad sealing a tournament win after a long run of tight matches."
                style="
                  background-image: url(&quot;https://storage-asset.msi.com/global/picture/game-team/nxl/team-nxl-09.jpg&quot;);
                "
              ></div>
              <div
                class="gallery-hero-slide"
                data-gallery-slide
                data-gallery-caption="A trophy-lift moment that captured how far the team had come."
                style="
                  background-image: url(&quot;https://i.ytimg.com/vi/OCtSFNcMMOc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCvyJ3tNFAVBAEVM-HwjDjv32f8lg&quot;);
                "
              ></div>
              <div
                class="gallery-hero-slide"
                data-gallery-slide
                data-gallery-caption="Late-night practice sessions where the roster kept grinding after hours."
                style="
                  background-image: url(&quot;https://preview.redd.it/late-night-gaming-vibes-v0-2ncxmf5kc4md1.jpeg?auto=webp&s=edb69d94521088a0b2f69d72795aaeecebea2777&quot;);
                "
              ></div>
              <div
                class="gallery-caption gallery-caption-hero"
                data-gallery-caption-text
              >
                A sea of supporters turned the arena into a wall of noise.
              </div>
              <div class="gallery-dots" aria-hidden="true">
                <span class="is-active" data-gallery-dot></span>
                <span data-gallery-dot></span>
                <span data-gallery-dot></span>
                <span data-gallery-dot></span>
              </div>
            </article>

            <div class="gallery-row gallery-row-two">
              <article class="gallery-frame ratio-16x9">
                <div
                  class="gallery-frame-media"
                  style="
                    background-image: url(&quot;https://static01.nyt.com/images/2014/08/31/technology/A1-ESPORTS-1/A1-ESPORTS-1-superJumbo.jpg&quot;);
                  "
                ></div>
                <div class="gallery-caption">
                  Open house crowd gathering around the stage.
                </div>
              </article>

              <article class="gallery-frame ratio-16x9">
                <div
                  class="gallery-frame-media"
                  style="
                    background-image: url(&quot;https://www.ccn.com/wp-content/uploads/2025/05/web3-gaming-maplestory-sandbox-1024x576.webp&quot;);
                  "
                ></div>
                <div class="gallery-caption">
                  Weekly scrim setup before kickoff.
                </div>
              </article>
            </div>

            <div class="gallery-row gallery-row-three">
              <article class="gallery-frame ratio-4x3">
                <div
                  class="gallery-frame-media"
                  style="
                    background-image: url(&quot;https://cdn.arstechnica.net/wp-content/uploads/2019/11/esportsTOP.jpg&quot;);
                  "
                ></div>
                <div class="gallery-caption">
                  Qualifier pressure in the group stage.
                </div>
              </article>

              <article class="gallery-frame ratio-4x3">
                <div
                  class="gallery-frame-media"
                  style="
                    background-image: url(&quot;https://www.accesswire.com/imagelibrary/54f4c5fc-6e7e-419d-9c95-9fea39556ade/829940/afec-finals-day-7.jpg&quot;);
                  "
                ></div>
                <div class="gallery-caption">
                  Post-match celebration with the trophy.
                </div>
              </article>

              <article class="gallery-frame ratio-4x3">
                <div
                  class="gallery-frame-media"
                  style="
                    background-image: url(&quot;https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE17sTUg87w2dcLTqHcRz2-Q0394ihSElkWQ&s&quot;);
                  "
                ></div>
                <div class="gallery-caption">
                  Team huddle before the campus showdown.
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>

      <!-- The Gallery Section : End-->

      <!-- The Contact Section : Start-->
      <section id="contact" class="section contact-section visible delay-6">
        <div class="container">
          <div class="contact-head">
            <p class="contact-kicker">ESTABLISH CONNECTION</p>
            <h2 class="section-title left">SECURE COMM-LINK</h2>
          </div>
          
          <div class="contact-grid">
            <!-- Left Column: Terminal Form -->
            <div class="contact-terminal">
              <div class="terminal-header">
                <span class="dot"></span><span class="dot"></span><span class="dot"></span>
                <span class="terminal-title">sys.comm_protocol_v2.0</span>
              </div>
              <asp:PlaceHolder ID="phContactForm" runat="server">
              <div class="terminal-body">
                <div class="form-group retro-input">
                  <label for="alias">&gt; ALIAS / GAMER TAG_</label>
                  <div class="input-wrapper">
                    <span class="bracket">[</span>
                    <asp:TextBox ID="txtAlias" runat="server" CssClass="term-input" autocomplete="off"></asp:TextBox>
                    <span class="bracket">]</span>
                  </div>
                </div>
                
                <div class="form-group retro-input">
                  <label for="commlink">&gt; COMM-LINK (EMAIL)_</label>
                  <div class="input-wrapper">
                    <span class="bracket">[</span>
                    <asp:TextBox ID="txtCommLink" runat="server" TextMode="Email" CssClass="term-input" autocomplete="off"></asp:TextBox>
                    <span class="bracket">]</span>
                  </div>
                </div>

                <div class="form-group retro-input">
                  <label for="directive">&gt; DIRECTIVE / PRIMARY TITLE_</label>
                  <div class="input-wrapper select-wrapper">
                    <span class="bracket">[</span>
                    <asp:DropDownList ID="ddlDirective" runat="server" CssClass="term-input">
                      <asp:ListItem Value="cs2">COUNTER-STRIKE 2</asp:ListItem>
                      <asp:ListItem Value="val">VALORANT</asp:ListItem>
                      <asp:ListItem Value="fifa">FIFA SERIES</asp:ListItem>
                      <asp:ListItem Value="pubg">PUBG</asp:ListItem>
                      <asp:ListItem Value="other">OTHER / GENERAL INQUIRY</asp:ListItem>
                    </asp:DropDownList>
                    <span class="bracket">]</span>
                  </div>
                </div>

                <div class="form-group retro-input">
                  <label for="transmission">&gt; ENCRYPTED TRANSMISSION_</label>
                  <div class="input-wrapper textarea-wrapper">
                    <span class="bracket top-bracket">[</span>
                    <asp:TextBox ID="txtTransmission" runat="server" TextMode="MultiLine" Rows="4" CssClass="term-input"></asp:TextBox>
                    <span class="bracket bottom-bracket">]</span>
                  </div>
                </div>

                <asp:Button ID="btnInitialize" runat="server" CssClass="btn btn-solid" Text="INITIALIZE" OnClick="btnInitialize_Click" OnClientClick="return handleInitialize(this);" style="margin-top: 15px;" />
              </div>
              </asp:PlaceHolder>

              <asp:PlaceHolder ID="phAdminTerminal" runat="server" Visible="false">
                <div class="terminal-body" style="color: var(--accent); min-height: 400px; display: flex; flex-direction: column; justify-content: center;">
                  <h3 style="font-family: 'Orbitron', sans-serif; font-size: 1.5rem; margin-bottom: 20px; animation: blinkCursor 2s infinite;">&gt; ACCESS GRANTED.</h3>
                  <p style="margin-bottom: 30px;">DIRECTOR PRIVILEGES ACTIVE. AWAITING COMMAND...</p>
                  
                  <div class="input-wrapper">
                    <span class="bracket" style="color: var(--accent);">root@cyborg:~#</span>
                    <asp:TextBox ID="txtAdminCommand" runat="server" CssClass="term-input" autocomplete="off" style="color: var(--accent);" onkeydown="return handleTerminal(event, this);"></asp:TextBox>
                    <asp:Button ID="btnLogoutHidden" runat="server" OnClick="btnLogoutHidden_Click" style="display:none;" />
                  </div>
                </div>
              </asp:PlaceHolder>

            </div>

            <!-- Right Column: Coordinates / Links -->
            <div class="contact-info">
              <div class="info-block">
                <h3>// BASE_OF_OPERATIONS</h3>
                <p>Khulna University of Engineering & Technology (KUET)<br/>
                Fulbarigate, Khulna-9203</p>
              </div>
              <div class="info-block">
                <h3>// NETWORK_NODES</h3>
                <ul class="social-nodes">
                  <li>
                    <a href="#" class="node-link">
                      <span class="node-icon">DS</span>
                      <div class="node-text">
                        <span class="node-name">DISCORD_SERVER</span>
                        <span class="node-status online">ONLINE : 142 USERS</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="node-link">
                      <span class="node-icon">ST</span>
                      <div class="node-text">
                        <span class="node-name">STEAM_GROUP</span>
                        <span class="node-status active">ACTIVE : SCRIMS</span>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#" class="node-link">
                      <span class="node-icon">FB</span>
                      <div class="node-text">
                        <span class="node-name">FACEBOOK_PAGE</span>
                        <span class="node-status">BROADCASTING</span>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- The Contact Section : End-->

    </main>

      <!-- The Classified Section : Start-->
      <asp:PlaceHolder ID="phClassifiedData" runat="server" Visible="false">
        <section id="classified" class="section visible delay-1" style="background-color: #050505;">
          <div class="container">
            <div class="contact-head">
              <p class="contact-kicker" style="color: #ff4757;">TOP SECRET</p>
              <h2 class="section-title left" style="color: #ff4757;">INTERCEPTED COMMS</h2>
            </div>
            
            <div style="background: rgba(10, 10, 10, 0.95); border: 1px solid #ff4757; padding: 20px; font-family: 'Share Tech Mono', monospace; overflow-x: auto; box-shadow: 0 0 20px rgba(255, 71, 87, 0.2);">
              <table style="width: 100%; border-collapse: collapse; text-align: left;">
                <thead>
                  <tr style="border-bottom: 1px solid #ff4757; color: #ff4757;">
                    <th style="padding: 12px;">TIMESTAMP</th>
                    <th style="padding: 12px;">ALIAS</th>
                    <th style="padding: 12px;">DIRECTIVE</th>
                    <th style="padding: 12px;">TRANSMISSION</th>
                  </tr>
                </thead>
                <tbody>
                  <tr style="border-bottom: 1px solid rgba(255, 71, 87, 0.2);">
                    <td style="padding: 12px; color: var(--muted);">05-09-2026 14:00</td>
                    <td style="padding: 12px; color: var(--text);">ShadowStriker</td>
                    <td style="padding: 12px; color: var(--text);">VALORANT</td>
                    <td style="padding: 12px; color: var(--text);">Requesting tryouts for the main roster. Immortal 3 peak.</td>
                  </tr>
                  <tr style="border-bottom: 1px solid rgba(255, 71, 87, 0.2);">
                    <td style="padding: 12px; color: var(--muted);">05-08-2026 09:30</td>
                    <td style="padding: 12px; color: var(--text);">NoobSlayer99</td>
                    <td style="padding: 12px; color: var(--text);">CS2</td>
                    <td style="padding: 12px; color: var(--text);">When is the next open scrim?</td>
                  </tr>
                  <tr>
                    <td style="padding: 12px; color: var(--muted);">05-05-2026 21:15</td>
                    <td style="padding: 12px; color: var(--text);">DrDisrespect</td>
                    <td style="padding: 12px; color: var(--text);">PUBG</td>
                    <td style="padding: 12px; color: var(--text);">YAYAYAYAYAYA.</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </section>
      </asp:PlaceHolder>
      <!-- The Classified Section : End-->

    <footer class="site-footer">
      <div class="container footer-content">
        <div class="footer-brand">
          <h3>CYBORG</h3>
          <p>KUET CYBER GAMING CLUB &copy; 2026</p>
        </div>
        <div class="footer-links">
          <a href="#home">HOME</a>
          <a href="#about">ABOUT</a>
          <a href="#events">EVENTS</a>
          <a href="#games">GAMES</a>
          <a href="#contact">CONTACT</a>
        </div>
        <div class="footer-status">
          <span class="status-dot"></span>
          SYSTEM ONLINE
        </div>
      </div>
    </footer>
    
    <div id="hacker-overlay" style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(5,5,5,0.95); z-index: 9999; flex-direction: column; align-items: center; justify-content: center; font-family: 'Share Tech Mono', monospace; color: var(--accent);">
      <h2 id="hacker-text" style="font-size: clamp(1.5rem, 3vw, 2.5rem); letter-spacing: 0.15em; text-shadow: 0 0 20px var(--glow); text-align: center; max-width: 80%;"></h2>
    </div>

    <script>
      function typeText(element, text, callback) {
        element.textContent = "";
        let i = 0;
        let interval = setInterval(() => {
          element.textContent += text.charAt(i);
          i++;
          if (i >= text.length) {
            clearInterval(interval);
            setTimeout(callback, 600);
          }
        }, 35);
      }

      function handleInitialize(btn) {
        const trans = document.getElementById('<%= txtTransmission.ClientID %>').value.trim();
        if (trans === "sudo override -auth director") {
          const overlay = document.getElementById('hacker-overlay');
          const textEl = document.getElementById('hacker-text');
          overlay.style.display = 'flex';
          typeText(textEl, "> GRANTING DIRECTOR PRIVILEGES...", () => {
             __doPostBack(btn.name, '');
          });
          return false; // prevent immediate postback
        }
        return true; // continue normal postback
      }

      function handleTerminal(event, inputCtrl) {
        if (event.key === 'Enter') {
          event.preventDefault();
          const cmd = inputCtrl.value.trim().toLowerCase();
          if (cmd === "logout") {
            const overlay = document.getElementById('hacker-overlay');
            const textEl = document.getElementById('hacker-text');
            overlay.style.display = 'flex';
            typeText(textEl, "> REVOKING DIRECTOR PRIVILEGES...", () => {
               __doPostBack('<%= btnLogoutHidden.UniqueID %>', '');
            });
          } else {
            // Not logout, just clear input immediately
            inputCtrl.value = '';
          }
          return false;
        }
      }
    </script>
    </form>
  </body>
</html>
