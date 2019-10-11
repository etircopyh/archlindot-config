// Mozilla User Preferences

/*      >>GENERAL<<        */
    /*      == Browser ==       */
user_pref("browser.uidensity", 1); // User Interface density
user_pref("browser.preferences.defaultPerformanceSettings.enabled", false); // Disable Firefox "recommended" performance settings
// user_pref("browser.bookmarks.max_backups", 2);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false); // Disable CFR
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false); // Disable CFR
user_pref("extensions.pocket.enabled", false); // Disable and hide Pocket
// user_pref("identity.fxaccounts.enabled", false); // Disable and hide Firefox Accounts and Sync
user_pref("network.manage-offline-status", false); // See bugzilla 620472
user_pref("reader.parse-on-load.enabled", false); // "Reader View"
// user_pref("xpinstall.signatures.required", false); // Enforced extension signing
user_pref("browser.backspace_action", 2); // 0 = previous page, 1 = scroll up, 2 = do nothing
user_pref("browser.tabs.closeWindowWithLastTab", false);
user_pref("browser.tabs.loadBookmarksInTabs", true); // Open bookmarks in a new tab
user_pref("browser.urlbar.decodeURLsOnCopy", true); // See bugzilla 1320061
// user_pref("general.autoScroll", false); // Middle-click enabling auto-scrolling [WINDOWS] [MAC]
user_pref("ui.key.menuAccessKey", 0); // Disable alt key toggling the menu bar
// user_pref("view_source.tab", false); // View "page/selection source" in a new window
// user_pref("accessibility.typeaheadfind", true); // Enable "Find As You Type"
user_pref("clipboard.autocopy", false); // Disable autocopy default [LINUX]
user_pref("layout.spellcheckDefault", 2); // 0 = none, 1 = multi-line, 2 = multi-line & single-line
    /*      == Crash reports ==     */
user_pref("dom.ipc.plugins.flash.subprocess.crashreporter.enabled", false); // Disable sending Flash crash reports
user_pref("dom.ipc.plugins.reportCrashURL", false); // Disable sending the URL of the website where a plugin crashed
user_pref("breakpad.reportURL", "");
user_pref("toolkit.crashreporter.infoURL", "");
user_pref("browser.chrome.errorReporter.infoURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.enabled", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
    /*      == Appearance ==        */
user_pref("browser.download.autohideButton", false); // Always display Downloads button
user_pref("toolkit.cosmeticAnimations.enabled", false); // Disable some animations
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true); // Allow userChrome/userContent
user_pref("svg.context-properties.content.enabled", true);
user_pref("browser.tabs.drawInTitlebar", true); // Enable CSD
user_pref("browser.in-content.dark-mode", true); // Dark Mode
user_pref("devtools.theme", "dark"); // DevTools Dark Mode
// Dark input fields fix (for Plasma DE)
user_pref("widget.chrome.allow-gtk-dark-theme", true);
user_pref("widget.content.allow-gtk-dark-theme", true);
user_pref("widget.content.gtk-theme-override", "Breeze");
    /*      == Add-ons ==       */
user_pref("plugin.state.flash", 0); // Disable Flash Player NPAPI plugin
user_pref("plugin.state.java", 0); // Disable Java NPAPI plugin
// user_pref("media.gmp-provider.enabled", false); // Disable GMP (Gecko Media Plugins)
// user_pref("media.gmp-widevinecdm.enabled", false); // Disable widevine CDM
// user_pref("media.gmp-widevinecdm.visible", false);
// System Add-ons
user_pref("app.normandy.first_run", false);
user_pref("app.normandy.enabled", false); // Disable Normandy/Shield
user_pref("app.normandy.api_url", "");
// user_pref("extensions.systemAddon.update.enabled", false); // Disable system add-ons autoupdate
// user_pref("extensions.systemAddon.update.url", "");
// user_pref("extensions.screenshots.disabled", true); // Disable Screenshots
user_pref("extensions.screenshots.upload-disabled", true); // Disable uploading to the Screenshots server
// user_pref("extensions.formautofill.addresses.enabled", false); // Disable Form Autofill
// user_pref("extensions.formautofill.available", "off");
// user_pref("extensions.formautofill.creditCards.enabled", false);
// user_pref("extensions.formautofill.heuristics.enabled", false);
user_pref("extensions.webcompat-reporter.enabled", false); // Disable Web Compatibility Reporter
user_pref("extensions.webcompat.perform_injections", false);
user_pref("extensions.webcompat.perform_ua_overrides", false);
user_pref("browser.ping-centre.telemetry", false);
    /*      == Media ==     */
user_pref("media.getusermedia.screensharing.enabled", false); // Disable screensharing
user_pref("media.getusermedia.browser.enabled", false);
user_pref("media.getusermedia.audiocapture.enabled", false);
user_pref("permissions.default.camera", 2); // Block camera access
user_pref("permissions.default.microphone", 2); // Block microphone access
user_pref("media.autoplay.default", 5); // Disable Autoplay
user_pref("media.autoplay.block-event.enabled", true);
user_pref("media.autoplay.block-webaudio", true);
// user_pref("media.autoplay.enabled.user-gestures-needed", false);
user_pref("media.block-autoplay-until-in-foreground", true);
// user_pref("media.peerconnection.video.vp9_enabled", false); // Disable VP9
user_pref("media.hls.enabled", true); // Enable HLS
user_pref("media.peerconnection.enabled", false); //Disable WebRTC
user_pref("media.peerconnection.ice.default_address_only", true); // Limit WebRTC IP leaks if using WebRTC
user_pref("media.peerconnection.ice.no_host", true);
    /*      == Downloads ==     */
// user_pref("browser.download.folderList", 2); // Downloads directory
user_pref("browser.download.useDownloadDir", false); // Enforce user interaction for security by always asking where to download
user_pref("browser.download.manager.addToRecentDocs", false); // Disable adding downloads to the system's "recent documents" list
user_pref("browser.download.hide_plugins_without_extensions", false); // Disable hiding mime types not associated with a plugin
// user_pref("browser.download.forbid_open_with", true); // Disable "open with" in download dialog
    /*      == New Tab Page ==      */
user_pref("browser.startup.homepage", "about:blank"); // Set HOME+NEWWINDOW page: about:home=Activity Stream (default), custom URL, about:blank
// user_pref("browser.newtabpage.enabled", false); // Set NEWTAB page: true=Activity Stream (default), false=blank page
// user_pref("browser.newtab.preload", false);
// user_pref('browser.newtabpage.activity - stream.improvesearch.topSiteSearchShortcuts', ""); // Disable pinned Top Sites
user_pref("browser.newtabpage.activity-stream.telemetry", false); // Disable Activity Stream telemetry
user_pref("browser.newtabpage.activity-stream.telemetry.ping.endpoint", "");
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false); // Disable Snippets
user_pref("browser.newtabpage.activity-stream.asrouter.providers.snippets", "");
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false); // Disable "Recommended by Pocket"
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false); // Disable sponsored content
user_pref("browser.newtabpage.activity-stream.feeds.discoverystreamfeed", false);
user_pref("browser.library.activity-stream.enabled", false); // Disable recent Highlights in the Library
    /*      == URL bar ==       */
// user_pref("keyword.enabled", false); // Disable location bar using search
// user_pref("browser.fixup.alternate.enabled", false); // Disable location bar domain guessing
user_pref("browser.urlbar.trimURLs", false); // Display full URL in address bar
// Disable live search suggestions
// user_pref("browser.search.suggest.enabled", false);
// user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.usepreloadedtopurls.enabled", false); // Disable location bar suggesting "preloaded" top websites
user_pref("browser.urlbar.speculativeConnect.enabled", false); // Disable location bar making speculative connections
// Disable location bar suggestion types
// user_pref("browser.urlbar.suggest.history", false);
// user_pref("browser.urlbar.suggest.bookmark", false);
// user_pref("browser.urlbar.suggest.openpage", false);
// user_pref("browser.urlbar.suggest.searches", false);
    /*      == Other ==     */
// Misc
user_pref("accessibility.force_disabled", 1); // Prevent accessibility services from accessing your browser
user_pref("accessibility.typeaheadfind.flashBar", 0);
user_pref("browser.sessionstore.interval", 30000); // Minimum interval between session save operations (ms)
user_pref("beacon.enabled", false); // Disable sending additional analytics to web servers
user_pref("browser.helperApps.deleteTempFileOnExit", true); // Remove temp files opened with an external application
user_pref("browser.pagethumbnails.capturing_disabled", true); // Disable page thumbnail collection
user_pref("browser.tabs.remote.allowLinkedWebInFileUriProcess", false); // Block web content in file processes
user_pref("browser.uitour.enabled", false); // Disable UITour backend so there is no chance that a remote page can use it
user_pref("browser.uitour.url", "");
user_pref("dom.webnotifications.enabled", false);
// user_pref("devtools.chrome.enabled", false); // Disable various developer tools in browser context
// Disable WebIDE to prevent remote debugging and ADB extension download
user_pref("devtools.debugger.remote-enabled", false);
user_pref("devtools.webide.enabled", false);
user_pref("devtools.webide.autoinstallADBExtension", false);
user_pref("devtools.debugger.force-local", true);
user_pref("mathml.disabled", true); // Disable MathML
// user_pref("svg.disabled", true); // Disable in-content SVG
user_pref("middlemouse.contentLoadURL", false); // Disable middle mouse click opening links from clipboard
user_pref("network.http.redirection-limit", 10); // Limit HTTP redirects (default: 20)
user_pref("permissions.default.shortcuts", 2); // Disable websites overriding Firefox's keyboard shortcuts
user_pref("permissions.manager.defaultsUrl", ""); // Remove special permissions for certain mozilla domains
user_pref("webchannel.allowObject.urlWhitelist", ""); // Remove webchannel whitelist
user_pref("pdfjs.disabled", false); // PDF Reader
user_pref("network.protocol-handler.external.ms-windows-store", false); // Disable links launching Windows Store on Windows 8/8.1/10 [WINDOWS]
// Disable Windows jumplist [WINDOWS]
user_pref("browser.taskbar.lists.enabled", false);
user_pref("browser.taskbar.lists.frequent.enabled", false);
user_pref("browser.taskbar.lists.recent.enabled", false);
user_pref("browser.taskbar.lists.tasks.enabled", false);
user_pref("browser.taskbar.previews.enable", false); // Disable Windows taskbar preview [WINDOWS]

/*      >>INTERFACE<<       */
    /*      == Language ==        */
user_pref("intl.locale.requested", "en-US"); // Firefox language
user_pref("intl.accept_languages", "en-US, en"); // Preferred language for displaying web-pages
user_pref("intl.locale.matchOS", false); // Don't use OS values to determine locale, force using Firefox locale setting
user_pref("javascript.use_us_english_locale", true); // Enforce US English locale regardless of the system locale
user_pref("intl.regional_prefs.use_os_locales", false); // Use APP locale over OS locale in regional preferences
    /*      == Homepage ==        */
user_pref("browser.startup.homepage_override.mstone", "ignore"); // Master switch
user_pref("startup.homepage_welcome_url", "");
user_pref("startup.homepage_welcome_url.additional", "");
// user_pref("startup.homepage_override_url", ""); // What's New page after updates
user_pref("browser.startup.page", 3); // START page: 0 = blank, 1 = home, 2 = last visited page, 3 = resume previous session
    /*      == Secure Pages Indication ==        */
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true); // Display warning (red padlock) for 'broken security'
user_pref("browser.ssl_override_behavior", 1); // Control 'Add Security Exception' dialog on SSL warnings: 0 = do neither 1 = pre-populate url 2 = pre-populate url + pre-fetch cert (default)
user_pref("browser.xul.error_pages.expert_bad_cert", true); // Display advanced information on Insecure Connection warning pages
// Display "insecure" icon and "Not Secure" text on HTTP sites
user_pref("security.insecure_connection_icon.enabled", true);
user_pref("security.insecure_connection_text.enabled", true);
// user_pref("security.insecure_connection_icon.pbmode.enabled", true);
// user_pref("security.insecure_connection_text.pbmode.enabled", true);
    /*      == Warnings ==        */
user_pref("browser.tabs.warnOnCloseOtherTabs", false);
user_pref("browser.tabs.warnOnOpen", false);
user_pref("full-screen-api.warning.delay", 0);
user_pref("full-screen-api.warning.timeout", 0);
user_pref("general.warnOnAboutConfig", false);
user_pref("browser.aboutConfig.showWarning", false);
    /*      == Picture-in-Picture ==        */
user_pref("media.videocontrols.picture-in-picture.enabled", true);
user_pref("media.videocontrols.picture-in-picture.video-toggle.enabled", true);
user_pref("media.videocontrols.picture-in-picture.video-toggle.always-show", true);
/*      == Fonts ==     */
// user_pref("browser.display.use_document_fonts", 0); // Disable websites choosing fonts (0=block, 1=allow)
// Disable icon fonts (glyphs) and local fallback rendering
// user_pref("gfx.downloadable_fonts.enabled", false);
// user_pref("gfx.downloadable_fonts.fallback_delay", -1);
user_pref("gfx.font_rendering.opentype_svg.enabled", false); // Disable rendering of SVG OpenType fonts
user_pref("gfx.font_rendering.graphite.enabled", false); // Disable graphite
// user_pref("layout.css.font-loading-api.enabled", false); // Disable Font Face loading (from external resources like Google Fonts)

/*      >>PERFORMANCE<<     */
    /*      == General ==        */
user_pref("gfx.webrender.all", true); // Enable WebRender
// WebGL
user_pref("webgl.disabled", true);
user_pref("webgl.enable-webgl2", false);
user_pref("webgl.dxgl.enabled", false); // [WINDOWS]
user_pref("webgl.min_capability_mode", true);
user_pref("webgl.disable-extensions", true);
user_pref("webgl.disable-fail-if-major-performance-caveat", true);
user_pref("webgl.msaa-samples", 0);
user_pref("layers.geometry.d3d11.enabled", false); // Disable usage of D3D11
    /*      == Cache ==        */
user_pref("browser.cache.disk.enable", true); // Enable disk cache
user_pref("browser.cache.disk.capacity", 524288); // Disk cache capacity: -1 = determine dynamically (default), 0 = none, n = memory capacity in kilobytes
user_pref("browser.cache.disk.parent_directory", "/tmp/firefox-cache"); // Write cache to RAM (tmpfs) instead of SSD / HDD
// user_pref("browser.cache.memory.enable", false); // Disable memory cache
// user_pref("browser.cache.memory.capacity", 0); // Memory cache capacity: -1 = determine dynamically (default), 0 = none, n = memory capacity in kilobytes
// user_pref("browser.cache.compression_level", 1); // Cache compression level: 1-9 (CPU dependant)
// user_pref("permissions.memory_only", true) // Disable permissions manager from writing to disk (This means any permission changes are session only)

/*      >>SECURITY<<     */
    /*      == HTTP ==      */
user_pref("network.dns.disableIPv6", true); // Disable IPv6
user_pref("network.http.altsvc.enabled", false); // Disable HTTP Alternative Services
user_pref("network.http.altsvc.oe", false);
user_pref("network.proxy.type", 0); // Disable looking for system proxy
user_pref("network.proxy.socks_remote_dns", true); // Enforce the proxy server to do any DNS lookups when using SOCKS
user_pref("network.tcp.tcp_fastopen_enable", true); // Speed up the opening of successive TCP connections between two endpoints
user_pref("network.trr.mode", 2); // Enable DNS over HTTPS
user_pref("network.trr.bootstrapAddress", "1.1.1.1");
user_pref("network.trr.uri", "https://cloudflare-dns.com/dns-query"); // DoH Server | https://github.com/curl/curl/wiki/DNS-over-HTTPS
user_pref("network.trr.resolvers", '[{ "name": "Cloudflare", "url": "https://mozilla.cloudflare-dns.com/dns-query" },{ "name": "Google", "url": "https://dns.google/dns-query" },{ "name": "Cisco/OpenDNS", "url": "https://doh.opendns.com/dns-query" },{ "name": "Adguard", "url": "https://dns.adguard.com/dns-query" },{ "name": "Adguard Family Protection", "url": "https://dns-family.adguard.com/dns-query" },{ "name": "DNSWarden Adblock", "url": "https://doh.dnswarden.com/adblock" },{ "name": "DNSWarden Uncensored", "url": "https://doh.dnswarden.com/uncensored" },{ "name": "SecureDNS", "url": "https://doh.securedns.eu/dns-query" },{ "name": "AppliedPrivacy", "url": "https://doh.appliedprivacy.net/query" },{ "name": "Digitale Gesellschaft (CH)", "url": "https://dns.digitale-gesellschaft.ch/dns-query" }, { "name": "Quad9", "url": "https://dns.quad9.net/dns-query" }]'); // DoH Resolvers
user_pref("network.security.esni.enabled", true); // Enable ESNI
user_pref("network.ftp.enabled", false); // Disable FTP
user_pref("network.file.disable_unc_paths", true); // Disable using UNC (Uniform Naming Convention) paths
user_pref("network.gio.supported-protocols", ""); // Disable GIO as a potential proxy bypass vector
// Disable resource preloading / prefetch
user_pref("network.dns.disablePrefetch", true);
user_pref("network.dns.disablePrefetchFromHTTPS", true);
user_pref("network.predictor.enabled", false);
user_pref("network.predictor.enable-prefetch", false);
user_pref("network.prefetch-next", false);
user_pref("network.http.accept-encoding", "gzip, deflate, br"); // Enable Brotli support
user_pref("network.http.speculative-parallel-limit", 0); // Disable connection opening on link-mouseover
// HTTPS (SSL/TLS / OCSP / CERTS / HPKP / CIPHERS)
user_pref("security.ssl.require_safe_negotiation", true); // Disable old SSL/TLS "insecure" renegotiation (vulnerable to a MiTM attack)
// Control TLS versions (Firefox telemetry (April 2019) shows only 0.5% of TLS web traffic uses 1.0 or 1.1) 1=TLS 1.0, 2=TLS 1.1, 3=TLS 1.2, 4=TLS 1.3
user_pref("security.tls.version.min", 3);
user_pref("security.tls.version.max", 4);
user_pref("security.ssl.disable_session_identifiers", true); // Disable SSL session tracking [FPI]
user_pref("security.ssl.errorReporting.automatic", false);
user_pref("security.ssl.errorReporting.enabled", false);
user_pref("security.ssl.errorReporting.url", "");
user_pref("security.tls.enable_0rtt_data", false); // Disable TLS1.3 0-RTT
user_pref("security.ssl.enable_ocsp_stapling", true); // Enable OCSP Stapling
user_pref("security.OCSP.enabled", 1);
user_pref("security.OCSP.require", true); // OCSP fetch: false = soft-fail, true = hard-fail
// CERTS / HPKP (HTTP Public Key Pinning)
user_pref("security.pki.sha1_enforcement_level", 1); // Disable or limit SHA-1 certificates
user_pref("security.family_safety.mode", 0); // Disable Windows 8.1's Microsoft Family Safety cert [WINDOWS]
// user_pref("security.nocertdb", true); // Disable intermediate certificate caching (fingerprinting attack vector)
user_pref("security.cert_pinning.enforcement_level", 2); // PKP (Public Key Pinning) 0=disabled 1=allow user MiTM (such as your antivirus), 2=strict
// Captive Portal Detection
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false);
user_pref("network.connectivity-service.enabled", false); // Disable Network Connectivity checks
    /*      == Privacy ==       */
// user_pref("layout.css.visited_links_enabled", false); // Disable coloring of visited links - CSS history leak
user_pref("browser.send_pings", false); // Disable 'Hyperlink auditing'
user_pref("browser.send_pings.require_same_host", true);
user_pref("media.eme.enabled", true); // DRM-controlled content playback
user_pref("network.cookie.cookieBehavior", 1); // Cookie behavior: 0 = Accept all cookies 1 = Block third-party cookies 2 = Block all cookies
user_pref("network.cookie.thirdparty.sessionOnly", true); // Set third-party cookies to session-only
user_pref("network.cookie.thirdparty.nonsecureSessionOnly", true);
user_pref("urlclassifier.trackingTable", "moztest-track-simple,base-track-digest256,content-track-digest256");
// user_pref("network.cookie.lifetimePolicy", 2); // Delete cookies on browser close
// user_pref("dom.storage.enabled", false); // Disable DOM Storage
user_pref("dom.indexedDB.enabled", true); // Enforce IndexedDB (IDB) as enabled
user_pref("browser.cache.offline.enable", false); // Disable offline cache
user_pref("offline-apps.allow_by_default", false); // Enforce websites to ask to store data for offline use
// user_pref("dom.caches.enabled", false); // Disable service worker cache and cache storage
// user_pref("dom.storageManager.enabled", false); // Disable Storage API
// user_pref("dom.storage_access.enabled", false); // Disable Storage Access API
user_pref("browser.sessionstore.privacy_level", 0); // Store extra session data: 0 = for any site 1 = for unencrypted (non-HTTPS) sites only 2 = Never
user_pref("network.IDN_show_punycode", true); // Enforce Punycode for Internationalized Domain Names to eliminate possible spoofing
user_pref("privacy.userContext.enabled", true); // Enable Container Tabs
user_pref("privacy.userContext.ui.enabled", true); // Enable Container Tabs setting in preferences
user_pref("privacy.usercontext.about_newtab_segregation.enabled", true); // Enable a private container for thumbnail loads
user_pref("privacy.userContext.longPressBehavior", 2); // Set behaviour on "+ Tab" button to display container menu: 0=no menu (default), 1=show when clicked, 2=show on long press
// Referer
user_pref("network.http.sendRefererHeader", 2); // Control when images/links send a referer: 0 = never, 1 = send only when links are clicked, 2 = for links and images (default)
user_pref("network.http.referer.spoofSource", false); // Disable spoofing a referer
user_pref("network.http.referer.XOriginPolicy", 0); // Send Referer: 0 = in all cases 1 = to same eTLD sites 2 = only when the full hostnames match
user_pref("network.http.referer.XOriginTrimmingPolicy", 1); // Info to be sent to header: 0 = full url 1 = URL without query string 2 = scheme, host, and port
// user_pref("network.http.referer.defaultPolicy", 3);
// user_pref("network.http.referer.defaultPolicy.pbmode", 2);
// Don't reveal build ID (Value taken from Tor Browser)
user_pref("general.buildID.override", "20100101");
user_pref("browser.startup.homepage_override.buildID", "20100101");
// Security
user_pref("security.csp.enable", true); // Enable CSP (Content Security Policy)
user_pref("security.dialog_enable_delay", 700); // Enforce a security delay on some confirmation dialogs such as install, open/save
// First Party Isolation
user_pref("privacy.firstparty.isolate", true); // Enable First Party Isolation
user_pref("privacy.firstparty.isolate.restrict_opener_access", true); // Enforce FPI restriction for window.opener
// user_pref("privacy.firstparty.isolate.block_post_message", true);
// Service Workers
user_pref("dom.serviceWorkers.enabled", false); // Disable service workers
user_pref("dom.push.enabled", false); // Disable Push Notifications
// user_pref("dom.push.userAgentID", ""); // To remove all notification subscriptions
user_pref("permissions.default.desktop-notification", 2); // Disable desktop notifications
user_pref("dom.event.contextmenu.enabled", false); // Disable website control over browser right-click context menu
user_pref("dom.event.clipboardevents.enabled", false); // Disable website access to clipboard events/content
user_pref("middlemouse.paste", false); // Disable middlemouse paste leaking clipboard content on Linux after autoscroll
user_pref("dom.allow_cut_copy", false); // Disable clipboard commands (cut/copy) from "non-privileged" content
user_pref("dom.disable_beforeunload", true); // Disable "Confirm you want to leave" dialog on page close
user_pref("dom.vibrator.enabled", false); // Disable shaking the screen
user_pref("javascript.options.asmjs", false); // Disable asmjs
// Disable Ion and baseline JIT to help harden JS against exploits (can cause performance loss)
// user_pref("javascript.options.ion", false);
// user_pref("javascript.options.baselinejit", false);
user_pref("javascript.options.wasm", false); // Disable WebAssembly
user_pref("dom.targetBlankNoOpener.enabled", true); // Enable (limited but sufficient) window.opener protection
    /*      == Telemetry >_< ==        */
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "");
user_pref("toolkit.telemetry.infoURL", "");
user_pref("toolkit.datacollection.infoURL", "");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.hybridContent.enabled", false);
user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("datareporting.healthreport.service.enabled", false); // Disable Health Reports
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.healthreport.infoURL", "");
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("extensions.getAddons.showPane", false); // Disable about:addons' Recommendations pane (uses Google Analytics)
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false); // Disable recommendations in about:addons' Extensions and Themes panes
user_pref("browser.discovery.enabled", false); // Disable personalized Extension Recommendations in about:addons and AMO
    /*      == Windows Preferences (Prevent websites from disabling new window features) ==         */
user_pref("dom.disable_window_open_feature.close", true);
user_pref("dom.disable_window_open_feature.location", true);
user_pref("dom.disable_window_open_feature.menubar", true);
user_pref("dom.disable_window_open_feature.minimizable", true);
user_pref("dom.disable_window_open_feature.personalbar", true); // Bookmarks toolbar
user_pref("dom.disable_window_open_feature.resizable", true);
user_pref("dom.disable_window_open_feature.status", true);
user_pref("dom.disable_window_open_feature.titlebar", true);
user_pref("dom.disable_window_open_feature.toolbar", true);
user_pref("dom.disable_window_move_resize", true); // Prevent scripts from moving and resizing open windows
user_pref("browser.link.open_newwindow", 3); // Open links targeting new windows in a new tab instead
user_pref("browser.link.open_newwindow.restriction", 0);
user_pref("dom.disable_open_during_load", true); // Block popup windows
user_pref("dom.popup_allowed_events", "click dblclick"); // Limit events that can cause a popup
    /*      == Geolocation ==       */
user_pref("geo.enabled", false); // Location-Aware Browsing
user_pref("permissions.default.geo", 2); // Location permissions: 0 = always ask (default), 1 = allow, 2 = block
user_pref("browser.search.region", "US"); // US region for search engine
user_pref("browser.search.countryCode", "US");
user_pref("browser.search.geoip.url", "");
user_pref("browser.search.geoSpecificDefaults", false); // Disable geographically specific results/search engines
user_pref("browser.search.geoSpecificDefaults.url", "");
// Disable using the OS's geolocation service
user_pref("geo.provider.ms-windows-location", false); // [WINDOWS]
user_pref("geo.provider.use_corelocation", false); // [MAC]
user_pref("geo.provider.use_gpsd", false); // [LINUX]
user_pref("geo.wifi.uri", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%"); // Use Mozilla geolocation service instead of Google when geolocation is enabled
user_pref("geo.wifi.logging.enabled", false); // Disable logging to console when geolocation is enabled
    /*      == Safe Browsing ==     */
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.blockedURIs.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous_host", false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.provider.google.gethashURL", "");
user_pref("browser.safebrowsing.provider.google.updateURL", "");
user_pref("browser.safebrowsing.provider.google4.gethashURL", "");
user_pref("browser.safebrowsing.provider.google4.updateURL", "");
user_pref("browser.safebrowsing.provider.mozilla.gethashURL", "");
user_pref("browser.safebrowsing.provider.mozilla.updateURL", "");
    /*      == RFP (Resist Fingerprinting) ==       */
// user_pref("privacy.resistFingerprinting", true); // Tor Uplift project that makes Firefox more resistant to browser fingerprinting (can cause breakage)
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true); // Disable mozAddonManager Web API
// user_pref("privacy.resistFingerprinting.letterboxing", true); // Enable RFP letterboxing (quite upsetting thing)
// user_pref("privacy.resistFingerprinting.letterboxing.dimensions", ""); // Is only meant for testing, and I recommend you DO NOT USE it
user_pref("browser.startup.blankWindow", false); // Disable showing about:blank as soon as possible during startup
    /*      == RFP Alternatives ==      */
// user_pref("dom.maxHardwareConcurrency", 2); // Spoof (or limit?) number of CPU cores
// user_pref("dom.enable_resource_timing", false); // Disable resource/navigation timing
// user_pref("dom.enable_performance", false); // Disable timing attacks
user_pref("device.sensors.enabled", false); // Disable device sensor API
// user_pref("browser.zoom.siteSpecific", false); // Disable site specific zoom
user_pref("dom.gamepad.enabled", false); // Disable gamepad API - USB device ID enumeration
user_pref("dom.netinfo.enabled", false); // Disable giving away network info
user_pref("media.webspeech.synth.enabled", false); // Disable the SpeechSynthesis (Text-to-Speech) part of the Web Speech API
user_pref("media.video_stats.enabled", false); // Disable video statistics - JS performance fingerprinting
user_pref("dom.w3c_touch_events.enabled", 0); // Disable touch events
user_pref("media.ondevicechange.enabled", false); // Disable MediaDevices change detection
user_pref("webgl.enable-debug-renderer-info", false); // Disable WebGL debug info being available to websites
// user_pref("dom.w3c_pointer_events.enabled", false); // Disable PointerEvents
// user_pref("ui.use_standins_for_native_colors", true); // Disable exposure of system colors to CSS or canvas
// user_pref("general.useragent.override", "");
// user_pref("general.buildID.override", "");
// user_pref("general.appname.override", "");
// user_pref("general.appversion.override", "");
// user_pref("general.platform.override", "");
// user_pref("general.oscpu.override", "");
    /*      == Hardware Fingerprinting ==       */
user_pref("dom.battery.enabled", false); // Disable Battery API
user_pref("dom.vr.enabled", false); // Disable WebVR API
user_pref("dom.telephony.enabled", false); // Disable Telephony API
user_pref("media.navigator.enabled", false);  // Disable media device enumeration
user_pref("media.navigator.video.enabled", false); // Disable WebRTC video capture
// Disable hardware acceleration to reduce graphics fingerprinting
// user_pref("gfx.direct2d.disabled", true); // [WINDOWS]
// user_pref("layers.acceleration.disabled", true);
user_pref("dom.webaudio.enabled", false); // Disable WebAudio API
// user_pref("media.media-capabilities.enabled", false); // Disable Media Capabilities API (may affect media performance if disabled)
    /*      == Mixed content ==     */
user_pref("security.mixed_content.block_active_content", true); // Disable insecure active content on https pages
user_pref("security.mixed_content.block_display_content", true); // Disable insecure passive content (such as images) on https pages
user_pref("security.mixed_content.block_object_subrequest", true); // Block unencrypted requests from Flash on encrypted pages to mitigate MitM attacks
    /*      == Extensions ==        */
user_pref("extensions.enabledScopes", 5); // Lock down allowed extension directories
user_pref("extensions.autoDisableScopes", 15);
// user_pref("extensions.webextensions.restrictedDomains", ""); // Disable webextension restrictions on certain mozilla domains (forbid to download extensions)
    /*      == Browser Content Blocking ==      */
user_pref('privacy.donottrackheader.enabled', true); // DONOTTRACKMEDAMN
user_pref('browser.contentblocking.category', 'custom');
user_pref('privacy.trackingprotection.enabled', true);
user_pref('privacy.trackingprotection.cryptomining.enabled', true);
user_pref('privacy.trackingprotection.fingerprinting.enabled', true);
// Blocklist
user_pref("extensions.blocklist.enabled", true);
user_pref("extensions.blocklist.url", "https://blocklists.settings.services.mozilla.com/v1/blocklist/3/%APP_ID%/%APP_VERSION%/");
    /*      == Passwords ==     */
// user_pref("signon.rememberSignons", false); // Disable saving passwords
// user_pref("security.ask_for_password", 2); // How often Firefox should ask for the master password: 0 = the first time (default), 1 = every time it's needed, 2 = every n minutes
// user_pref("security.password_lifetime", 5); // How often in minutes Firefox should ask for the master password
// user_pref("signon.autofillForms", false); // Disable auto-filling username & password form fields
// user_pref("signon.formlessCapture.enabled", false); // Disable formless login capture for Password Manager
user_pref("network.auth.subresource-http-auth-allow", 1); // HTTP authentication credentials dialogs: 0 = don't allow sub-resources 1 = don't allow cross-origin sub-resources 2 = allow sub-resources (default)
    /*      == Shutdown ==      */
// user_pref("privacy.sanitize.sanitizeOnShutdown", true); // Enable Firefox to clear items on shutdown
// user_pref("privacy.clearOnShutdown.cache", true);
// user_pref("privacy.clearOnShutdown.cookies", true);
// user_pref("privacy.clearOnShutdown.downloads", true);
// user_pref("privacy.clearOnShutdown.formdata", true); // Form & Search History
// user_pref("privacy.clearOnShutdown.history", true); // Browsing & Download History
// user_pref("privacy.clearOnShutdown.offlineApps", true); // Offline Website Data
// user_pref("privacy.clearOnShutdown.sessions", true); // Active Logins
// user_pref("privacy.clearOnShutdown.siteSettings", false); // Site Preferences
// Reset default items to clear with Ctrl-Shift-Del
// user_pref("privacy.cpd.cache", true);
// user_pref("privacy.cpd.cookies", true);
// user_pref("privacy.cpd.downloads", true); // not used, see note above
// user_pref("privacy.cpd.formdata", true); // Form & Search History
// user_pref("privacy.cpd.history", true); // Browsing & Download History
// user_pref("privacy.cpd.offlineApps", true); // Offline Website Data
// user_pref("privacy.cpd.passwords", false); // this is not listed
// user_pref("privacy.cpd.sessions", true); // Active Logins
// user_pref("privacy.cpd.siteSettings", false); // Site Preferences
// Clear Session Restore data when sanitizing on shutdown or manually
// user_pref("privacy.clearOnShutdown.openWindows", true);
// user_pref("privacy.cpd.openWindows", true);
// Reset default 'Time range to clear' for 'Clear Recent History'
// 0=everything, 1=last hour, 2=last two hours, 3=last four hours,
// 4=today, 5=last five minutes, 6=last twenty-four hours
// user_pref("privacy.sanitize.timeSpan", 0);
    /*      == Ciphers ==       */
// Disable 3DES (effective key size < 128)
// user_pref("security.ssl3.rsa_des_ede3_sha", false);
// Disable 128 bits
// user_pref("security.ssl3.ecdhe_ecdsa_aes_128_sha", false);
// user_pref("security.ssl3.ecdhe_rsa_aes_128_sha", false);
// Disable DHE (Diffie-Hellman Key Exchange)
// user_pref("security.ssl3.dhe_rsa_aes_128_sha", false);
// user_pref("security.ssl3.dhe_rsa_aes_256_sha", false);
// Disable the remaining non-modern cipher suites as of FF52
// user_pref("security.ssl3.rsa_aes_128_sha", false);
// user_pref("security.ssl3.rsa_aes_256_sha", false);
