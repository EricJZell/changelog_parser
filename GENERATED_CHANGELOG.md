# Change Log

## [15.5.11]
### Added
- [#115458083] Add 'out of stock' indication to orders form
- [#128321949] Add a Magellan like preview to Create Item Comment
- [#129366351] Add buttons for Cancel / Save along top right of both the Create and Edit POG Comment pages
- [#129712983] Add initial merchandising date for locations.
- [#131116965] Rake task for Compliance to write today's compliances to a report
- [#131116965] Rake task for today's compliance includes data on how the dashboard calculates compliance
- [#131812005] It is now possible to edit inactive locations
### Changed
- [#117133925] Take existing content placements into account when calculating planning
- [#12664005] Ensure CompletionSnapshot and VmmComplianceSnapshot run each night for all clients
- [#129365621] Refactor required fields for Comments forms
- [#129385729] Create Comment Views: revert to old style buttons
- [#129386479] Edit Comment form is updated to be consistent with the Create Comment form
- [#129478513] Label box around conditions to display comment "Selected Conditions" on Create and Edit page for both POG and Content to be consistent.
- [#130040363] Shorten title field and update text on Create/Edit Comment UI
- [#130041321] Improve style for Create/Edit Comment page buttons
- [#130922177] Scheduled region-location-rollup cache update with snapshot task
- [#131116965] Changed crontabs to reflect customer locations for running compliance snapshot
- [#131116965] Completion Snapshot uses initially noncompliant fixtures as the basis for calculations.
- [#131116965] Compliance Snapshot calculates compliance as count of fixtures which are planogrammed and compliant divided by those that are planogrammed
- [#131116965] Make Compliance Snapshot for Optus run at 10:32 PM Sydney Austrailia time
- [#131116965] VmmComplianceSnapshot: creates compliance records without using Orion
- [#131307241] Feedback Categories follow the setup order in Compliance and Execution Report
- [#131733141] Hooked up CVD v1.9.5 (compliance color-coding fix)
- [#131924627] Update Critical Information Translations
- [#14183] Made CachedResult query calculations btwn :start and :stop markers
### Fixed
- [#125360271] Fixed CompletionSnapshot save_initial_noncompliant_fixtures method signatures
- [#126678041] For CVD region rollup cache, weed out orphaned locations
- [#128595011] SAP should not change during location feed for tmobile.
- [#129477623] Fix tab names for "Create POG Critical Information" and "Create Content Critical Information"
- [#129840941] Fix regression in saving Content Comments
- [#130041321] Fixes the enabled/disabled state of the 'Save' button on the Create Comment form
- [#130758833] Adding content to certain planograms no longer returns 500 error.
- [#131116965] Added the new ComplianceSnapshot signature to fix rake compliance:snapshot
- [#131116965] Can't run Completion Snapshot if there isn't a current campaign for completion
- [#131116965] Correct current calculation of location completion to use effective_date
- [#131116965] Fixed Totango configuration warning
- [#131116965] Fixed compliance snapshot to use correct effective date in test.
- [#131116965] TemplatesForFixtures now consider fixture_types that act as another fixture type
- [#132237015] Correct start campaign text on comment form
### Removed
- [#111333670] Remove removed content from fixture view
- [#131806789] Copy content: Remove checkbox for 'Update Planograms in this campaign to use copies'

## [15.5.10.5]
### Fixed
- [#130683245] Fix vzt:spot_id_users_creation task to use cid attribute instead of attr002

## [15.5.10.4]
### Added
- [128576687] Add VzT 'Import OMMExport-SMS Feed' task to R15
### Fixed
- [127994667] Deleted categories are no longer displayed when creating a Reference File
- [14344] Fix VHA Magellan 'create issue' from including unexpected categories

## [15.5.10.3]
### Fixed
- [#131006979] Fixed: Some Fixture Details are not Loading correctly.
- [#131193445] Content orders can now be placed on VHA in Magellan

## [15.5.10.2]
### Added
- [#126074379] Added UBC code to R15
- [#127118429] Add permitted fixture type operations to required roles for VZT
- [#127929889] Add VZT Roles and permissions for r15
- [#127930023] Add Roles & Permissions for UBC
- [#130683245] Add VZT r12 cronjobs to r15 and convert time to UTC time in crontabs.
- [#130683289] Add UBC r12 cronjobs to r15 and convert time to UTC time in crontabs.
- [#130825549] Add number labeling to contents on planograms for clients being upgraded to R15
- [#130932749] Added 'Order' Link for VZT when a Fixture with POP is viewed on a floorplan.
- [#14282] Enabled VHA ordering in Magellan
- [14239] Save planogram properties when creating a new planogram
### Changed
- [#128576687] Updated processing of VZT Location Feed and associated email.
- [14218] Update VHA upload_orders task crontab entry
### Fixed
- [#126533073] Fixed some failing migrations for VZT on R15
- [#126687271] Magellan: User can no longer view Issues tab without appropriate feedback permissions.
- [#127757907] New VZT locations now only have one user auto-created
- [#129569779] Store Tools in Locations's dashboard page now loads correctly
- [#129702857] Fixed VZT Dashboard screen to redirect correctly when the user has only one location
- [#130127719] multiple fixes to the Content Count Report.
- [#130321743] Corrected contents of POP tab for VZT
- [#130990433] Corrected VZT order link on Contents List page
- [14247] Fix vha orders report
- [] Fix VHA ordering with magellan_view config in place for R15
### Removed
- [#130686701] Order functionality supressed on Magellan for Cox, VZT, UBC
- [#130945103] Removed trash icons that allowed deleting of orders in Magellan.

## [15.5.10.1.1]
### Changed
- [] Update order flag in cap one site config
### Fixed
- [#128576687] Fixed error email handling when MegaDb file is missing.
- [] Fixed Cap permitted Fixture Type operations
- [] Updated Cap crontabs with UTC times
- [] Updated Cap crontabs with missing entries

## [15.5.10.1]
### Added
- [#127118467] Add Fixture Type Operation permissions for ubc
- [#128576687] Added VzT 'Import OMMExport-SMS Feed' task to R15
- [#129716717] Add a 'wrap text' feature in autocomplete search reference file
### Changed
- [#129955449] Update Capital One SSO Configuration
- [#130056801] Rename fixture_comment action to pog_comment
### Fixed
- [#129494759] Fix locations search page
- [#129537341] Fix 404 Error when trying to Add Planograms Comments in COX
- [#129711595] Fix CSS 404 error in the console by only loading reference.scss if the file exists
- [#129718731] Fix 500 Server Error when creating a New Location by changing some category options from array to string for VZT
- [#129959409] Fix 500 Error when using Upload Spreadsheet for location by using 'cid' field instead of 'attr002' for VZT
- [#129969715] Fix broken assets image on Capital One Location Dashboard
- [#130056787] Fix 500 error when going to 'find files' link
- [#130127719] Fix Content Count Report status bar from loading up to 200%.
- [] Make Cap One SSO use Simple Login link

## [15.5.10]
### Added
- [#115356201] Add VZT R12 filters to R15
- [#116069157] Add Container type feed for VHA in R15
- [#119087493] Add Planogram Name and Exclude DIY Content on  Optus Sales Order report
- [#127215025] Create new links in POG Comments subnav
- [#127929889] Added VZT Roles and Permissions.
### Changed
- [#126431355] Import validator now counts the total number of errors on an imported file, instead of the number of lines with errors
### Fixed
- [#115440587] Make styling changes to CAP ONE login page
- [#126631159] Fix planogram update fails by preventing a 'partial update' and displaying an error message to the user
- [#126687271] Fix permissions so unauthorized users can not view the issues tab in Magellan
- [#127757907] Delete Multiple UserIDs for Locations in VZT.
- [#128098575] Fix 500 error when user try to upload Locations Spreadsheet.
- [#128332849] Cap One: Fix translations for compliance terminology
- [#128355373] Cap One: Fix Planogram labels in the flash view from being only partially visible
- [#128690829] Fix error when trying to delete an image from the gallery.
- [#128695577] Fix Capital One compliance terms by updating translations
- [#128790065] Fix 500 error in New Item Tab in view planogram page by adding floorplan_tabs new_items  and group_by config to COX
- [#129537341] Fix 404 Error when trying to Add Planograms Comments.
- [#129711595] Fix CSS 404 error in the console when cancelling a new File in Reference Section.
- [#129802365] Fix: An announcement can be created with a start date superior than the end date.
- [#129969715] Fix broken assets image on Capital One Location Dashboard
- [#130056801] Fix 404 error when a user tries to create a new comment.
- [#13551] Fix UpsShipmentEvent type name
- [#13551] Fixed Campaign Item Tracking Not populating
- [#13749] Fix "All Content" report for Layout Based Planogram clients
- [#13749] Fix All Content Report for fixtures with no language
- [#14112] Fixed: Unable to Save floorplan Changes at Store of the Future
- [#14123] Fix 500 error in redefine_fixture_groups
- [14086] Fixed: Unable to view or resolve issues on floorplan (permissions update)
- [14100] Hooked up CVD v1.8.16.8 (No data fix)
### Removed
- [] Remove ability to scope the layout placement groups list by start and end campaigns
- [] Remove ability to scope the layouts list by start and end campaign

## [15.5.9.9]
### Changed
- [14315] o2 process_content_feed rake task makes a backup of the feed file on the SFTP server, rather than deleting it from the server.
### Fixed
- [#131763717] Fix Content Orders Needing Approval For Metro PCS upgrade to R15
- [14294] Fix Issue Report for O2 when certain options are selected
- [14315] Fix o2 process_content_feed rake task to handle ISO-8859-1 characters like "£".
- [14363] Fix Content Orders Needing Approval Tool for o2

## [15.5.9.8]
### Fixed
- [14315] Prevent O2 rake tasks from running on UAT

## [15.5.9.6.1]
### Fixed
- [14321] Fix O2 RETCON feed rake task

## [15.5.9.6]
### Added
- [#130684211] Add PCS cronjobs from R12 to R15 and convert times to UTC
### Changed
- [#125317621] Magellan can now limit how many pieces an individual store can order
### Fixed
- [#127994667] Deleted folders no longer visible in Reference Files
- [#129882015] Fixed: Duplicate locations with the same CID are being created in Tmobile after location feed
- [#130759665] Fixed: New content link works in Magellan again.
- [#14301] Fixed popup 500 error when loading a floorplan on BBY
- [] Magellan fix: Fixtures are now viewable.
### Removed
- [#130945103] Removed trash icons that allowed deleting of orders in Magellan.

## [15.5.9.5]
### Added
- [] Added Order Approval Process for PCS to R15
### Fixed
- [] Fix PCS Permissions
- [] Fixed: Campaign Item Tracking Not populating
- [] Fixed: User can view Issues tab in Magellan when user does not have access to anything feedback related
- [] O2: Fixed: Score on compliance report doesn't match score on location dashboard
- [] O2: Fixed: weekly_compliance_report failing
- [] O2: convert time to UTC time in crontabs
- [] PCS: Make sure Reference file links in POG comments work and are linked as expected

## [15.5.9.4.2]
### Fixed
- [#130384639] Add pagination to the Labor Assignments page to avoid having too many planograms in one page, which causes the dropdowns to be very slow.
- [#14301] Fixed 500 error on request for single icon

## [15.5.9.4.1]
### Changed
- [14366] Update the Public Cert for Optus SSO (Production)
### Fixed
- [] BBY Compliance and Execution report now matches spec
- [] Fixed: Skuter_run was failing with invalid option

## [15.5.9.4]
### Added
- [127125747] Magellan now transitions from fixture to floorplan view with back button
- [127821877] Orders file goes to Archive folder for Cricket
### Changed
- [125317621] Limit orders on Magellan
- [127486321] Fixture selection improved in Magellan
- [130327917, 129962183, 129716389] BBY Compliance and Execution report improvements
### Fixed
- [124273291] Munpack won't find some email attachments
- [127109449] Magellan: Fix Sku find failure warning on findable item
- [127988857] Announcements tab not displayed on IE8
- [128763035] Fix Magellan logging out even with activity
- [130202297] Fix Locations subnav from showing duplicated entries
- [130383555] Hide all the CPC reports on the release branch
- [13902] Fix layout placement group page by changing dropdown menus to load as you type

## [15.5.9.3.3.1]
### Fixed
- [14258] Fix 500 Error on print planogram view

## [15.5.9.3.3]
### Fixed
- [129619369] Fixed: 'Report an Issue' Form missing Item Description on Magellan
- [14193] Fixed: AT&T 'Report an Issue' Form on Desktop not transferring Item Description, Order Number or NSK Request Number data

## [15.5.9.3.1]
### Added
- [#126260535] Create weekly job to resolve issues after specified number of days
- [] BBY scheduled skuter runs now include team_placement option
### Changed
- [#113164341] PCS: The URL for USFI is no longer in the site config. It's in the LayerCake instead.
- [#129071183] Set 'resolve_feedback_after_days' to 60 for TMobile. This will cause issues older than 60 days be automatically resolved.
- [#129962183] Locations now filtered by a location filter on compliance and execution report
### Fixed
- [#113164341] Fixed encoding error in rake task pcs:process_content_feed
- [#129533651] Reporting an issue on AT&T now sends attributes to Archway Zendesk that were not being sent.
- [#130194133] Fix some permissions for PCS.
- [#130232215] Device Brand Presence Report now renders a helpful message if the client doesn't have the necessary configurations for the report.
- [#14183] Fix dashboard Rake tasks on Cricket, including CachedResult behavior

## [15.5.9.3.0.1]
### Fixed
- [#130202297] Remove duplicate entries for locations subnav
- [14227] ATT Global Login on Mobile directing to desktop version of iPOG

## [15.5.9.3]
### Added
- [#110272232] add guard for nil value in recent_views for recently_viewed_locations widget
- [#111333670] List the removed content from fixture view for simple planogram clients.
- [#115356201] Add VZT R12 filters to R15
- [#116729695] Add COX code from R12 to R15
- [#116729873] Add CAP ONE code from R12 to R15
- [#127118281] CAP: Add permitted Fixture Type operations to required roles.
- [#127118381] COX: Add permitted Fixture Type operations to required roles.
- [#127215025] Create new links in POG Comments subnav
- [#127219049] Create new 'Create Planogram Comment' page in Magellan
- [#127301971] Add CAP ONE Roles And Permissions
- [#127824017] Added auto populate order insert date upon selection of merchandising date
- [#127930135] Add COX Roles And Permissions
- [#12793061] Content can belong to a campaign, and campaign is editable on the content page
- [#127991761] Create UI for Campaign Fixtures Report for BBY
- [#128026623] Add scheduled skuter task
- [#128247111] provide methods to identify container types that have content and amend content replacement search to recognize container_type_id
- [#128248205] Add sortable Displays On column to comments list
- [#128322397] Added Preview/Cancel/Save buttons at the top of create item comment page
- [14082] Add shg-anz branding.
- [] Create the content category for Campaign Tag
- [] Include container_type in the content attributes listed for Content Replacement.
### Changed
- [#126167907] Hero Device with type -1 does not get any accessory columns
- [#127306135] Magellan Store Number column default value is now cid
- [#128249239, #128316145, #128318165] Comments List UI improvements
- [#128664067] Improve display of planning counts when content hasn't yet been generated.
- [#14174] Change column headers from 'Wearables' to 'Specialty' and 'BMG' to 'Misc'
- [#14175] Change columns in SOTF wall report and excludes 5 additional fixtures from explorer wall columns
- [14107] Update filter recache_via_location to include planogram_assignment_filters
- [] Changed the default logging level to INFO from DEBUG
### Fixed
- [#115440587] Make styling changes to CAP ONE login page
- [#115458083] Add out of stock indication to orders form
- [#118175365] The delete button marks the locations as inactive.
- [#119388729] Fix Spreadsheet uploader to remove duplicate field mappings.
- [#121490627] Make Spreadsheets controller work with non paranoid classes.
- [#125577671] Fix Sunday instead of Saturday for BBY campaign names.
- [#125584861] Compliance and Execution Report for BBY timestamp and groupings
- [#125962693] Hooked up CVD v1.8.24 (fixed wrong message displayed for corporate region)
- [#126136423] Fix the 'sent date' in orders view for o2 to use 'shipped_at' attribute instead of 'updated_at' attribute
- [#126431355] Import validator counts amount of total errors.
- [#126546331] Cronjob tasks run using the production environment.
- [#126631159] Let user know when planogram update fails and don't let it do a partial update
- [#126640103] Hooked up CVD v1.8.23 (replace orion compliance with cached compliance)
- [#126687271] Change permission being used by Magellan to control Feedback reportability
- [#126687271] Display location's issues tab based on same permissions as VMM
- [#126818059] Fixed a 500 error when adding a fixture type to a content
- [#126885955] Fix location search in "stores displaying this planogram"
- [#127463475] 500 error when using a column that doesn't already exist in the Spreadsheet uploader.
- [#127487767] Fix legacy critical information for CI Report for ATT
- [#127587801] Resolving a feedback that blocks compliance now returns the fixture to compliant state in non SIMPLE_PLANOGRAMS clients
- [#127591277] Fixed bug for CriticalInformationDisplaySetting's item numbers starting with white spaces
- [#127591277] Now content with white spaced item numbers don't break fixtures on magellan when a comment exists
- [#127591277] Remove leading and trailing whitespaces from content item numbers before saving
- [#127591277] Remove new lines from item numbers on Critical Information Display Settings
- [#127642285] Fixed marking a campaign for completion
- [#127945345] Fixed a 404 error in the questionnaires report dashboard
- [#128062341] Make create item comment textarea shorter (2 lines)
- [#128152105] Fix Magellan orders tab permisssion on floorplan fixture to match desktop version
- [#128158511] Location questionnaires no longer include fixture questionnaires.
- [#128221575] Edit the att site config to allow for SAML SSO
- [#128230961] Do not allow copying placements from a previous campaign if planogram is empty
- [#128244637, #128251975] Changed title and body columns for comment list view
- [#128244977] Hooked up CVD v1.9.0 (Cached compliance + completion)
- [#128316145] Remove required from location filter select in create item comment page
- [#128318165] Remove separate by comma label from comments form
- [#128321949] Add Magellan like preview to create item comment page
- [#128434581] Fixed bug that was making content comments have fixture as displays_on value
- [#128535959] ATT rake task to pull in cinglepoint locations
- [#128762133] Fixed an inconsistency on campaigns between All Content report and All Item
- [#128958101] Fixed an error on content spreadsheet uploader when uploading empty warehouse minimums
- [#129146121] Return an empty file if the aren't fixture types with content
- [#129365621] Refactor required fields for Comments forms
- [#129366351] Add Save/Cancel buttons to create POG comment page
- [#129366351] Create/Edit comments UI buttons and title feedback
- [#129385729] Use old style for create/edit comments buttons
- [#129386479] Edit Comments forms updated to match create UI
- [#129477623] Fix white spaces on Comments nav bar
- [#129478513] Change label on comment coonditions to display Selected Conditions
- [#129641877] Add capybara test for generating compliance by day report.
- [#129641877] Test for compliance by day report fixed.
- [#129840941] Fix Comment Create regression by updating button styles
- [#129969715] Fix broken assets image on Capital One Location Dashboard
- [#130040363] Shorten title field and update text on Create/Edit Comment UI
- [#130041321] Fixes to Save button enabled/disabled state
- [#130041321] Improve style for Create/Edit Comment page buttons
- [#13551] Fixed Campaign Item Tracking Not populating
- [#13749] Fix "All Content" report for Layout Based Planogram client
- [128505679] Fix 500 error on display of shipment orders
- [13524] Removed container type from the content bulk edit
- [13551] Fix UpsShipmentEvent type name
- [13749] Fix All Content Report for fixtures with no language
- [14076] Remove filter ID numbers from Fixture Compliance Requirement edit page
- [14095] Change user_list_report.rb get_users query so that deleted locations are ignored
- [14096] Fix Planogram Skus report 500 Error by not sorting an array of arrays with nils
- [14116] Fix SOTF_Wall report for ATT to include missing columns
- [14129] Fix "Attachment provided without message body" on JobberWorker emails with attachments.
- [14153] Prevent error when importing campaign setting from previous campaign
- [14163] Fix bug where CIReport wouldn't work if there were no dummy locations.
- [14194] Fix callout not expanding issue on content list
- [] Fix the fixture_type_selection.html.erb partial so the 'select all' works for all reports
- [] New Store Kit fulfillment is integrated with latest Orderfront validations
- [] Revert uniqueness constraint on location's cid (again)
- [] correct logic used in Content.for_replacements
### Removed
- [#127661637] Remove "Create new attributes" checkbox in Spreadsheet Upload for ATT

## [15.5.9.2]
### Added
- [#128026547] Add audits for init tasks
- [#14086] Added issue-related permissions and assign to rbm role
- [#14100] Hooked up CVD v1.8.16.8 (No data fix)
- [14123] Fix 500 error in redefine_fixture_groups
### Changed
- [#127673547] tmobile location feed: adjustment to allow feed to create new stores
### Fixed
- [#126167659] logins via mobile not showing up in reports
- [#126885955] Fix location search in "stores displaying this planogram"
- [#13940] Progress bar status fixed for content count
- [#14109] Wall report does not blow up if it does not find a location
- [#14112] allow att to group a fixture group if exists
- [#14113] Apply the selected location column group to the Content Counts report
- [] Announcements now work in IE8
- [o2] Removed obsolete recurring jobs from O2 crontab.
- [tmobile] Added Placeholders to fixture tabs for Tmobile

## [15.5.9.1.2]
### Fixed
- [13936] Remove deprecated attributes
- [14123] Fix 500 error in redefine_fixture_groups

## [15.5.9.1]
### Added
- [14086] Added issue-related permissions and assign to rbm role
- [14100] Hooked up CVD v1.8.16.8 (No data fix)

## [15.5.7]
### Changed
- [#120690361] Display only feedback categories on feedback forms and exclude order categories
- [#123423421] Removed the Floorplan Brochure tab in case it's not configured for a client
- [#123813361] Fix Floorplan endpoint for Magellan, it was rendering the wrong fixtures for ATT
- [#126140751] Add translation for ATT Content Comment on print view
- [126167227] Remove price column under the fixture POP tab
- [] Remove ability to scope the layout placement groups list by start and end campaigns
- [] Remove ability to scope the layouts list by start and end campaign
### Fixed
- [#103196124] Hooked up CVD v1.8.19 (regional completion support)
- [#103196124] Made completion timeframe configurable
- [#112794621] Fixed Google Analytics integration
- [#114440031] Added check for campaign completion conflicts
- [#116069157] Container type feed for VHA migration
- [#116082905] Add Totango integration to track user actions.
- [#117535707] VZT files moved to R15
- [#118563857] Prevent contents warehouse migration from failing if some already columns exist.
- [#118866329] Optimize, alphabetize, and add filters to BBY Planogram Report
- [#119015107] Add Attributes to User. (For displaying e.g. the third_party_login and execution_manager fields.)
- [#121324715] Add NSK Campaign attribute to new/edit location pages
- [#121396825] Hooked up CVD v1.8.16.6 (restored inaccessible region support)
- [#121717565] User edit page takes 2-8 minutes to load
- [#122659271] Fix for location item search when no item was found
- [#123043341] Now Magellan displays the same issues as Desktop
- [#123047521] Created a cache of rolled-up region locations for CVD
- [#123943141] Add Magellan Translation for the Comment and Critical label
- [#124416351] Fixed bug when uploading multiple content
- [#124819251] Orderfront: refactored dashed content to work with breakoffs
- [#125360271] Fixed CompletionSnapshot save_initial_noncompliant_fixtures method signatures
- [#125588631] Fix Planogram Code comments for BBY
- [#125897501] Orderfront: added Order History link on floorplan page
- [#125944551] Filter fixtures by user for magellan planograms
- [#125944551] Remove 'hotspot' fixtures from magellan planograms
- [#125962739] Hooked up CVD v1.8.21 (Fixed output of zero as dash)
- [#126134753] Save a dashboard comment fixed
- [#126244927] Hooked up CVD v1.8.16.7 (csv output not following settings fix)
- [#126264473] Fix 500 error after creating issues from magellan
- [#126264473] Magellan: Use same permission as Desktop for issues resolving
- [#126298891] Use the right permission for feedback reporting on fixtures for Magellan
- [#126602227] Hardware is now searchable in SIMPLE_PLANOGRAMS on floorplans
- [#126623975] Pull out antiquated site specific spreadsheet uploader for Cricket
- [#12664005] Ensure CompletionSnapshot and VmmComplianceSnapshot run each night for all clients
- [#126818059] Fixed a 500 error when adding a fixture type to a content
- [#127296665] Remove unsed category and change validation before destroy category
- [#127554863] Get comments for contents in POP tab fixed for Desktop.
- [#128026547] Add audits for init tasks
- [#128094503] Add/modify settings and configuration for PCS
- [#128242477] Campaign Workbook report fixed
- [115792485] Fixed an unescaped html in campaigns list
- [116325305] Add Boxing functionality: the ability to group and label contents per campaign
- [121960921] Fixed campaign workbook for pcs
- [121992625] T-Mobile location feed now sets many defaults to "NA"
- [126143505] Fixed merchandising field on questionnaire
- [126394221] Improve compliance image report performance
- [126415139] Fix permission for O2 store managers
- [126429167] Fixed a 500 error when clicking upload new floorplan without a file
- [126617311] Fixed some translations for Cricket
- [13551] VZW Now loads WFO tracking info in production
- [13598] Fix CI Report for ATT
- [13849] Fixed error when clicking "Make A Copy" in Fixture Template Editor
- [13923] Update Prescriptive Report for ATT
- [13957] Changed API to resolve button compliance requirements for the same fixture as photo did before
- [14019] Handle circular content replacement specifications
- [] Changed cron settings for compliance:snapshot
- [] Completion Snapshot for SIMPLE PLANOGRAMS
- [] Fixed compliance snapshot to use correct effective date in test.
- [] Improve Completion Snapshot with logging and code simplification.
- [] Include whitelist for creating/updating Location attributes and aspects
- [] Use an effective date for ComplianceSnapshot based on a start date
- [] VmmComplianceSnapshot: creates compliance records without using Orion

## [15.5.6.2]
### CHANGED
- [#125584861] Compliance and Execution Report for BBY timestamp and groupings
- [13939] Team Assignments will check for acts as on SKUT
### FIXED
- [#116069219] Fix content count report
- [#125588631] Fix Planogram Code comments for BBY

## [15.5.6]
### Added
- [#121227381] Add Comments column to Content list on Magellan
- [#123943141] Add translation for Callouts in ATT.
- [14019] Handle circular content replacement specifications
### Changed
- [#113164341] When creating a new content order in PCS, the new order is now considered when checking if the daily limit has been exceeded.
- [#117863459] Update Cricket (aio) permissions for R15 upgrade
- [#118175365] Remove acts_as_paranoid from the location model.
- [#119733605] Orderfront Add to Cart: change failed transaction message
- [#120234211] T-mobile integration, add 2 new attributes to location feed
- [#120994567] Campaign Critical Information no longer requires title
- [#121141459] Labor Assignments can now be immediately expired
- [#121227381] Add Comments column to Content list on Magellan
- [#121396825] Hooked up CVD v1.8.16.6 (restored inaccessible region support)
- [#121423671] Orderfront API: use third_party_login in lieu of att_uid
- [#121497063] Rename the tmobile rake file from tmo to tmobile
- [#121580657] Orderfront PostContent : truncate names which exceed 100 chars due to Archway restriction
- [#121614339] Tmobile integration: Swap "SAP" for "Store Number" in location feed
- [#121678711] Hooked up CVD v1.8.16.5 (hide inactive stores, fix regional hierarchy)
- [13791] Prevent feedback comment from fetching location on objects with no location method defined
- [13814] Replaced Accessory Panel header with Memorable Wall in AT&T Ted Report
- [13852] Compliance Requirements for Questionnaires are now location level instead of user level
- [13852] Compliance works for campaigns in the past in magellan
### Fixed
- [#113164341] When creating a new content order in PCS, the new order is now considered when checking if the daily limit has been exceeded.
- [#114095191] Autosend location info to Orderfront API
- [#118175365] Remove acts_as_paranoid from the location model.
- [#118391063] Image Gallery for a location should only consider campaigns that are accessible by it
- [#118518885] Added Print Quantity page to Campaign Workbook report
- [#118939623] Fixed locations count on Questionnaires report
- [#119087493] Add Planogram Name and Exclude DIY on Sales Order report
- [#119096765] Display Container Type instead of width and height for O2.
- [#119225545] Implemented desktop completion percentage
- [#119287679] Upload CSV: locations are not uploading
- [#119549961] Upload Stock on Hand: UNIT_QTY values that are not integer need to be rejected
- [#119728965] Post to Fulfillment (one location) for Orderfront
- [#119930823] CompletionSnapshot
- [#120023861] Added scope to be used from CVD to just show the feedbacks that are fixture issues
- [#120240823] Values not updating when changing the value of a field from something to nil when using the Syncer.
- [#120433731] Cricket Integration: Update import order task.
- [#120433731] Cricket: Prefix tracking number with URL when syncing from feed files.
- [#120455659] Campaign Workbook limited to active locations
- [#120615217] Improve performance of rake task mark_campaigns_active
- [#120693579] Critical Information is currently tied to content instead of the conditions specified
- [#120713331] Removed VZW Campaign killer task
- [#121079565] Update Sift to 3.1.0.
- [#121172811] Fix Photo Compliance Required Settings
- [#121223611] Display NSK link if LayerCake includes 'OrderFront' as fulfillment house
- [#121225337] Added Setting for client-specific CVD store number column
- [#121225337] Hooked up CVD v1.8.16.3 (client-specific store num col)
- [#121232123] Fix expand button for content comments on print view
- [#121232123] Separate Content Comments from Fixture Comments on Planogram Print View
- [#121232563] Use CKEditor on Critical Information for Content form
- [#121528337] Fix campaign creation, now it uses the right campaign_id when creating after another campaign
- [#121597443] Fix Category can't be blank error when creating new reference file even though a category is selected.
- [#121680935] Fix Hardware tab on Magellan
- [#121687181] Add click here link to content comments form
- [#121687181] Fix comment links on fixture's content list
- [#121693179] Avoid displaying raw HTML on Comment's show/list view
- [#121693179] Fix HTML on coments on Acc & Devices table and Print view
- [#121693179] Fix comment title for content comments
- [#121698219] Handle tracking URLs in the UI.
- [#122038977] Cricket: Blank Orders File created when there are no orders to be exported.
- [#122059545] Cricket: export Orders file runs in UTC timezone instead of EST.
- [#122061703] The Syncer module syncs columns that should not be synced.
- [#122202229] Summary tabs in Issues List report no longer have empty headers.
- [#122598471] Fix performance issue when loading comments from magellan
- [#123043341] Now magellan filters issues using non_campaign_review, like vmm
- [#123511951] Fix content comments not changing title after editing
- [#123813361] Fix 500 error on hardware method for FixtureGroups
- [#124913011] Fix 500 error on view changes page
- [#13816] Category Dropdown for Labor Assignment fixed.
- [#13940] Progress bar status fixed for content count report
- [#13943] 500 error when clicking on reference files logged in as VMM-40-Operations user
- [#13965] Edit reference categories showing strange hierachy fixed
- [119291317] Fix Report Request Failed when choosing start and end date
- [13570] Fixed content list report to xls
- [13640] Do not cache assets on server, but do cache them on browser
- [13689] a_layout_placements are now copied instead of transferred
- [13689] a_layout_placements can now be copied from a past campaign to the present
- [13736] update future merch column names and half wall totals calculation
- [13748] Email is delivered to RBM on skuter fail
- [13749] Fix All Content Report for fixtures with no language
- [13778] Fix race condition for filter caching when creating new campaign and creating/editing a location
- [13791] Prevent feedback comment from fetching location on objects with no location method defined
- [13801] Names with symobols in Templates can now be copied correctly, all Templates can now copy correctly, not just FixtureTemplates
- [13801] validates on template name takes into account deleted
- [13825] Content Settings can now be used by more clients
- [13904] Add scale calculation setting for images over Flash's max pixel allowance
- [13954] Comment creation dropdowns switched to select2's
- [13991] Add guard for vha migration
- [] Fixtures endpoint no longer failing with a bad signature for Fixture Group's hardwares method.
- [] Improve performance of ComplianceRequirements / Questionnaire Completion code.
- [rm13764] Improve perforamnce of Campaign Workbook for Simple Planogram clients

## [15.5.5.1]
### Fixed
- [13834] Additional Column to Future Wall Report
- [13835] Push Future Reports to current and sent to Archway SFTP
- [13852] Compliance Requirements for Questionnaires are now location level instead of user level
- [13852] Compliance works for campaigns in the past in magellan
- [13877] Final Wall and Priority Report updates
- [] Updated BBY Prod Cert for SSO

## [15.5.5]
### Fixed
- [#121225337] Added Setting for client-specific CVD store number column
- [#121225337] Hooked up CVD v1.8.16.3 (client-specific store num col)
- [13598] Fix CI Report for ATT
- [13825] Content Settings can now be used by more clients
- [14017] Replace static URL for Verizon orders (VZW/VZT) in view & content list report

## [15.5.4.6]
### Fixed
- [13551] moved vzw crontab.prod.primary to crontab.production.primary so that it will run on production
- [13975] removed Rack::Cache in an attempt to fix broken logo problem
- [13984] added location attribute columns and some attributes to tmobile

## [15.5.4.5]
### Fixed
- [13640] Do not cache assets on server, but do cache them on browser
- [13841] User Report data is skewed: doesn't match columns headers
- [13882] 500 error when trying to download user file
- [13887] Issue list out of order in 15.5
- [] Cricket Rake tasks now run on UAT.
- [] Tmobile location feed disabled on production, enabled on UAT.

## [15.5.4.4]
### Fixed
- [#118489851] Fixture Counts report no longer shows irrelevant locations and displays a Totals row.
- [#119741243] Fixed race condition in filter caching of new campaigns
- [#119949705] Fixtures added to floorplans in the Current campaign that display planograms from Previous campaigns are now captured by the Compliance Images Report.
- [#120114597] Send email on order creation for some clients
- [#120394325] Fix missing critical information link
- [#121053941] Fix error when running issue list report with specific params (o2)
- [#13536] Fix column headers for planogram coverage report
- [#13818] Create a dummy content fixed, when the item number exists
- [#13882] Download user file as csv fixed
- [13524] Removed container type from the content bulk edit
- [13640] Do not cache assets on server, but do cache them on browser
- [13705] Restored BBY customer-facing Error Emails
- [13736] update future merch column names and half wall totals calculation
- [13748] Email is delivered to RBM on skuter fail
- [13748] Upcoming Lights phase added to skuter call
- [13764] Improve performance of Campaign Workbook for Simple Planogram clients.
- [13812] Slight tweak to Future Wall Report v2
- [13841] User Report data is skewed: doesn't match columns headers
- [13846] Fix password expiration so that it does not become nil upon login
- [13882] 500 error when trying to download user file
- [13887] Issue list out of order in 15.5
- [] Translation vmm.client.theme was getting created without a locale
- [pt121225337] Added Setting for client-specific CVD store number column

## [15.5.4.3]
### Fixed
- [13765] Reverted Creating reference files shows full list of active and deleted folders

## [15.5.4.2]
### Changed
- [#121524919] Add approval status columns from all recent content orders page
### Fixed
- [13849] Fixed error when clicking "Make A Copy" in Fixture Template Editor

## [15.5.4.1]
### Added
- [#121511111] Remove defaults columns from Campaign Workbook report
- [#121524919] Add approval status columns from all recent content orders page
- [] Completion Snapshot
### Fixed
- [13657] Campaign Workbook exporting database values (verified on UAT)
- [13679] Photo compliance report showing active and deleted attributes
- [13765] Creating reference files shows full list of active and deleted folders

## [15.5.4]
### Added
- [#118862055] Display text questions in the questionnaire dashboard report
- [] BBY Primary nodes will now look for imports on the SFTP server every 30 min by default
### Changed
- [#113164341] An email is always sent when Feedbacks/ContentOrders are created. If it requires approval, an additional email is sent. Another email is sent if a content order is denied.
- [#118391063] Image Gallery for a location should only consider campaigns that are accessible by it
- [#119006723] Hooked up CVD v1.8.16.1 (fixed bug in CVD completionPercentageVal)
- [#119096765] Display Container Type instead of width and height for O2.
- [#119287679] Upload CSV: locations are not uploading
- [#119741243] Fixed race condition in filter caching of new campaigns
- [#120023861] Added scope to be used from CVD to just show the feedbacks that are fixture issues
- [#120615217] Improve performance of rake task mark_campaigns_active
- [#120693579] Critical Information is currently tied to content instead of the conditions specified
- [#120713331] Removed VZW Campaign killer task
- [13689] a_layout_placements are now copied instead of transferred
- [13689] a_layout_placements can now be copied from a past campaign to the present
- [13736] update future merch column names and half wall totals calculation
- [13778] Fix race condition for filter caching when creating new campaign and creating/editing a location
- [13791] Prevent feedback comment from fetching location on objects with no location method defined
- [13801] Names with symobols in Templates can now be copied correctly, all Templates can now copy correctly, not just FixtureTemplates
- [13801] validates on template name takes into account deleted
- [] Bumped RBM Valdator to v2.5.0
- [] Cricket Rake tasks now run on UAT.
- [] Fixed .nil check in BBY pog slammer to correctly handle empty string
- [] Merged Divided Fixture Groups which makes a single fixture group per mechandising
- [] Tmobile location feed disabled on production, enabled on UAT.
### Fixed
- [#113189701] Display proper hierachy levels when user try to upload a file
- [#116800949] Fixed All Content page, which showed new content as Existing
- [#118489851] Fixture Counts report no longer shows irrelevant locations and displays a Totals row.
- [#118939623] Fixed locations count on Questionnaires report
- [#119226605] PCS: Presence of content in the rbmCatalog has no effect on an item's orderable status
- [#119741243] Fixed race condition in filter caching of new campaigns
- [#119946871] Fixed 404 error on vzw floorplan view
- [#119949705] In SIMPLE_PLANOGRAMS, compliance images are now tied to the campaign of the planogram the image was uploaded for.
- [#120114597] Send email on order creation for some clients
- [#120207625] Import Campaign Settings now works always as expected
- [#120394325] Fix missing critical information link
- [#121053941] Fix error when running issue list report with specific params (o2)
- [#13775] Fix 'Report Compliance' doesn't gray out
- [119291317] Fix Report Request Failed when choosing start and end date
- [13705] Restored BBY customer-facing Error Emails
- [13748] Email is delivered to RBM on skuter fail
- [13748] Upcoming Lights phase added to skuter call
- [] 'mark_campaigns_active' task now runs every 10 minutes instead of five
- [] Translation vmm.client.theme was getting created without a locale

## [15.5.3.3]
### Fixed
- [#119741243] Fixed race condition in filter caching of new campaigns
- [13570] Fixed content list report to xls
- [13756] Newly Created Campaign Failing to Cache
- [13767] Issue pins showing on fixtures when there is no active issues
- [pull#4493] add_resque_cloudwatch_to_crontab

## [15.5.3.2]
### Changed
- [13486] Undelete category if soft deleted before destroying
- [13604] Fixture Count Report Problems in VZW
- [13632] Get rid of distribution types drop down on locations search for VZW
### Fixed
- [#118859745] Email in all non-production systems will be written to the filesystem. This is a temporary measure until the new plan has been implemented
- [#119268597] Destroy added to aurora permission groups page
- [#119477995] Could not recache filters for all campaigns when bringing them over from r12
- [#13456] Fix planogram compliance percentage count by only counting each compilant fixture once
- [#13486] Undelete category if soft deleted before destroying
- [] ComplianceSnapshot can calculate the compliance of a single location

## [15.5.3.1]
### Added
- [#118432665] Cricket upload stock on hand task.
- [#118433339] Cricket export online orders task.
### Changed
- [#116969585] Update O2 permissions for R15 upgrade
- [#116969661] Update permission for PCS upgrade
- [#117863459] Update Cricket (aio) permissions for R15 upgrade
- [#118859745] Email in all non-production systems will be written to the filesystem. This is a temporary measure until the new plan has been implemented
### Fixed
- [#103196124] Made campaign included_for_completion dependent on 'completion_dashboard' Setting
- [#118391063] Remove campaigns that does not have access to the current location in ImageGallery
- [#118867145] Fix error when downloading a multiple questionnaire report
- [#119224293] Fix 500 error downloading Issues List report after choosing fixture types

## [15.5.3]
### Changed
- [13479] Remove page field from the floorplan report
- [13581] Removed the Session class ('lib/session.rb').
- [13581] Respect idle_timeout: invalidate idle sessions.
- [] Removed LocationsController#Planogram_list
### Fixed
- [#114576011] Fixed New items tab/page, now it shows only new items that belong to the campaign that is viewed.
- [#116476333] Make pog content visible in Caampaign Planograms report when not assigned to any locations
- [#116968889] remove references to legacy style announcements
- [#116969661] Update permission for PCS r12 to r14 upgrade
- [#117536439] cleanup:daily task failing on vzw qa fixed
- [#117733319] skip a bad filter when recaching, and send error email to Support
- [#118112685] Fix 500 when user tries to view a location with no active campaigns
- [#118313873] Used in these campaigns table should be permissioned.
- [#118489851] Normalized the different Location counts reports for fixtures to have the same personalization
- [#118602323] Fix 500 error changing name after error
- [#118603771] Fix 500 server error when any role tries to resolve an issue
- [#118606209] Remove keys Active/Future from edit filter when no table is present
- [#118755825] Remove att specific filter caching so they are the same as everyone
- [#119022237] Don't run compliance snapshot on a location that does not have a current campaign
- [#119475769] Fix floorplan problem loading some fixtures
- [12940] Fixed download of supply chain compare CSV

## [15.5.2.4]
### Fixed
- [] Fixed bug where existing campaigns were not being found by BBY Planogram Product Position feed due to timestamp
- [] ZIndex column not required for BBY Planogram Product Position import (see Peg and Shelf support)

## [15.5.2.3]
### Fixed
- [#115334167] Pegs and Shelves support in Product Position feed
- [#117450721] Compliance and Execution Report: Columns G & H changes
- [#118868239] Skuter runs are reverting the is_compliant flag on fixture_placements
- [] Campaigns created by BBY Imports were setting their being_at to the end of day Sunday instead of the beginning
- [] Product position feed can now place any content.

## [15.5.2.2]
### Fixed
- [] Right justify on MAID check in Location Self Serve

## [15.5.2.1]
### Changed
- [13581] Removed the Session class in 'lib/session.rb'.
### Fixed
- [13581] Respect idle_timeout: invalidate idle sessions.

## [15.5.2]
### Added
- [#107819752] Brought over the code that O2 uses in r12 for its Ukmail integration.
- [#108017894] Aurora: permissioned admin can associate one or more regions when creating/editing a user
- [#110501088] Change request: Required Fields on a Feedback being reported
- [#114682595] Add service object to handle posting Content to OrderFront via API requests
- [#114682799] Add service object to handle posting Location data to OrderFront's API endpoint
- [#114685217] Add service object to handle API requests to add content to OrderFront cart
- [#115714363] add migration to clean up O2 Roles and Users for upgrade to R15
- [#115885115] Root reference file category should not be changed
- [#116969585] Add Migrations to set up PCS role specific permissions for R12 to R15 upgrade
- [#116969585] Add migration to set up O2 role specific permissions for R12 to R15 upgrade
- [#117347469] Add migration to set permissions required to upgrade all r12 clients to R15
- [#117347469] Add migration to set permissions required to upgrade all r12 clients to r15
- [#118661617] Aurora: add 'Clear' link on user search form
### Changed
- [#107816142] All content page now groups content by fixture.
- [#112004429] Hooked up CVD v1.8.8 with orion fix and region optimization
- [#112933159] Changed who receives emails when feedbacks are created and when comments are attached to feedbacks.
- [#114433957] Added region serializer for orion
- [#114433957] Hooked up CVD v1.8.9 gem with region rollup fix
- [#115367407] Upgrade Sift to 2.1.8
- [#115714363] o2 default fixture type permitted operations
- [#115714365] pcs default fixture type permitted operations
- [#116032637] Disable Compliance by day report for all
- [#116032637] Re-enable Compliance by day report
- [#116204677] Configure error handling & failure messages for specific to fulfillment service
- [#116249853] Orders Report switched to Resque
- [#116249867] Questionnaire Report switched to Resque
- [#116249877] Access Report switched to Resque
- [#116249895] Device Brand Presence report using Resque background system
- [#116798939] Rewrite help method so is easier to work and configure, using settings and uploading reference files.
- [#116965453] Announcements in Draft status can have their Kind edited.
- [#116968889] Removed all references to the permission enable_streaming_announcements in announcements
- [#117017085] Add highlighting on 'Used in These Campaigns' list on a_filter page for Active and Future campaigns
- [#117536465] Cricket: Convert R12 Filters to R15
- [#118138417] Remove fixtures from existing content section with no content associated
- [13506] BBY Planograms now match down to the Segment(option)
- [] Add location scope for STATUS
- [] Change arrangement of scopes in Fixture#find_templates so is_active true is included
- [] Compliance Snapshot calculates compliance as count of fixtures which are planogrammed and compliant divided by those that are planogrammed
- [] Improved performance for Compliance Snapshot
- [] Instrumentation to see match between FixturesForTemplates and fixture.template
- [] Modify ComplianceSnapshot to run all accessible, active locations, using the current campaign for each location
- [] Pull site specific PCS code from r12 pcs master
- [] Rake task for Compliance to write today's compliances to a report
- [] Rake task for today's compliance includes data on how the dashboard calculates compliance
### Fixed
- [#111176074] Add fixture to locations behavior inconsistent.
- [#111228378] 2 RBM Admin roles.
- [#112080081] Add merchandising labeled details method added for compliance report
- [#113020603] Fix reports e-mails link do not work.
- [#113164603] Content Integration Feed for PCS Integration.
- [#114433957] Hooked up CVD v1.8.10 gem with corporate region compliances rollup fix
- [#115192381] When backbutton is used you should not be able to see content from when you were logged in.
- [#115500953] Fix failure to save edit floorplan
- [#115795937] Show all planograms results in Error if user previously performs order by.
- [#115875457] Add a migration that removes all role associations on file root category.
- [#116032637] Fix Compliance by day report
- [#116035393] Fix request report error.
- [#116061669] Upload Multiple Content page isn't empty anymore for VZW.
- [#116211047] Content item number is visible unless is simple planogram.
- [#116249569] remove spawn_requests from ContentsContorller#list
- [#116249613] remove spawn_request from CampaignsController#cost_summary
- [#116249613] remove spawn_request from FixturesController#planogram_coverage
- [#116249701] Fixed 'peg_qty_min' undefined method for FixtureTemplateContent
- [#116249701] Remove spawn_request from LocationsController#supply_chain
- [#116249811] LocationsController#index XLS download of LocationList uses Resque backgrounding system
- [#116249887] Remove spawn_request from ReportController#sales_order
- [#116249917] TemplatesController#generate_pick_and_pack uses Resque backgrounding system
- [#116321085] Hooked up CVD v1.8.11 which contains issue comments fix
- [#116381317] Compliance report output botched
- [#116461239] Fix all content page 500 error for o2.
- [#116478141] Fix View Fixture Counts Report results in error message
- [#116614347] Fix to Questionnaires report error
- [#116640861] Complaince report for all locations
- [#116647409] Fix issue list report empty
- [#116653003] Deassign all roles from filters for pcs and remaining clients to be migrated
- [#116787955] Spreadsheet Worker fixed
- [#117172577] o2 header working for all resolutions
- [#117245647] VZW: View Planograms link is not displayed instead 500 server error for Store Manager Role is displayed.
- [#117386791] Add before_validation instead before_save in ContainerType uniq name
- [#13522] Add pagination to speed up search planograms
- [13436] Delete a category with feedback associated is not allowed now.
- [13475] Fix failure to delete a particular fixture that was added and deleted in the same campaign
- [13586] Pog Assigner should ignore records older than the current campaign’s begin_at date
- [] TemplatesForFixtures needs to consider fixture_types that act as another fixture type
- [] rake compliance:snapshot needs the new ComplianceSnapshot signature

## [15.5.1]
### Added
- [#115346429] Convert O2 location filters to r15.
- [#115860247] Fixure count report ability to chose prority
### Changed
- [#114320401] Item number labels shown on print view when setting show_item_number_label is true
- [#114683267] Add a migration to check and create warehouse content attributes
- [#114804283] "Report problem" button in floorplan is greyed out if user does not have permission to use it.
- [#115254773] Added Setting to hide CVD Manager column for Optus
- [13446] Update Prescriptive Report columns for ATT
- [] Altered Planogram Facade to count placed location, not speculative locations
- [] Improved performance of CampaignWorkbook for clients who use the content_placements table
### Fixed
- [#113120019] Constrain compliance image visability to user by accessible region
- [#113164823] All Items Tab on Location Floor plan page for PCS Integration.
- [#114681619] Handle missing title error in Comments controller
- [#114686803] Adapted comments' images to fit in their containers
- [#115347921] Convert PCS filters to r15.
- [#115357485] Fix user is not able to add a comment in Campaigns.
- [] (Aurora) Prevent from assigning duplicate locations when creating/editing a user

## [15.5.0]
### Added
- [] Added Sales Order to the report page so that Optus users with proper permissions can generate and download the Sales Order report from the UI. Permissions are created for Optus roles who can generate the report
### Changed
- [#107816142] Fixed 500 error in All Content page when there is no new content.
- [#108372008] inform user in lieu of 500 when no content for pick and pack  Print Table Layout
- [#114310791] Added compliance visualization dashboard translations
- [#114348513] Creating a planogram with a taken name in the same campaign is not permitted and gives a message to the user. Copies are created with the planogram's name followed by "(1)", "(2)", etc.
- [#114497959, #110097502] Upgrade Sift to 2.1.5 [#114497959, #110097502]
- [#114521651, #114603209] Upgraded ComplianceVisualizationDashboard to 1.8.5 [#114521651, #114603209]
- [#114698981] Fix Planogram Coverage report.
- [#114721751] Delete merchandising drop down
- [#114804283] "Report problem" button in floorplan is greyed out if user does not have permission to use it.
- [12962] Validate sldb feed for vzw before sync and create a file of only good lines and emails line numbers of skipped lines to those who were receiving success emails
- [13107] let content settings determine fixture blinking without being over-ruled by upcoming_lights
- [13427] Fixed users with no assigned Regions cannot delete checked planograms
- [] In sites/att/app/models/dealer_open_enrollment.rb, change CID_MAP from a constant loaded at initialization, to a memoized variable loaded in a class method.
- [] Removed add column from attributes
- [] updated the version of the floorplan designer flash
### Fixed
- [#107820592] Fix o2 PolyBag SKU column for Polybag assignments report
- [#110768476] Assign regions or locations to new users on New User page
- [#111962803] Campaign Workbook report fixed
- [#112080081] Filter fixtures for compliance images count
- [#112224025] Fix Language checkbox that was not available in columns to display for Content
- [#113569215] Fix compliance by day report when passing status param.
- [#113866483] Not allow to create a category without name.
- [#113918759] Not allow to create a comment without title.
- [#114310941] Fix old filters not visible even when message says old filters need to be converted to new.
- [#114519663] Validate sort_order length attribute of the FixtureType model.
- [#114706163] Requests report spreadsheet bug fixed
- [#114815639] Changed the box-sizing for the submenu.
- [#115290279] Switch user bug fixed
- [#115347921] Convert PCS filters to r15.
- [#115529293] Location Galleries now only list relevant campaigns in their pull-downs
- [#13328] id not necessary anymore in columns for viewing fixture counts report
- [13185++] ensure filters tied to active fixture templates get cached on fixture floorplan changes
- [13226] [13226](https://redmine.rbmtechnologies.com/issues/13226) Display correct hardware when viewing planogram
- [13309] Fixed uploading CSV file in Spreadsheet uploader
- [13438] Url-Decode Attribute to Column map parameter values that the spreadsheet uploader passes between set and verify requests
- [13444] Have rake task broadcast to Rabbit in batches, not ALL
- [] (Aurora) Prevent from assigning duplicate locations when creating/editing a user

## [15.4.14]
### Added
- [#110506016] Script to add / alter permissions to remove dependence on "deny" & "top-level" permissions.
- [#110519284] Script to dump effective permissions, or check against an earlier dump.
- [#118432665] Cricket upload stock on hand task.
- [#118433339] Cricket export online orders task.
### Changed
- [#118188665] Created a Setting to personalize Location counts report columns
- [#118651885] Top level checkbox now select childern in aurora
- [#118758687] Aurora: replace checkboxes with delete links in tables
- [#118775485] User table now uses datatables to search on users
- [13581] Removed the Session class ('lib/session.rb').
### Fixed
- [#118489851] Normalized the different Location counts reports for fixtures to have the same personalization
- [#119247537] Aurora: display location/region datatables
- [#119323113] Save selected permissions when user updates a PermissionGroup
- [#119323389] Reduce white space on Aurora user creation page
- [#119378427] Save selected permissions when user creates a Role with assigned permissions
- [#119379837] Add missing Aurora permissions. Grant to RBM Admin role
- [#13724] Backroom Associated Device SKUs copy during during 'Import Campaign Settings' Jobber process
- [#13731] The form in POG list update view allow the selection of all the Merch Kit dates (from all previous campaigns)
- [13635] Fix highlighting for simple planograms clients
- [N/A] Only allow permissions from permission groups on roles in coffeescript
- [N/A] Use "Location Restrictions"/"Region Restrictions" for translation keys, not "Location"/"Region"

## [15.4.13]
### Fixed
- [] Fix optus sales order content selection

## [15.4.12]
### Fixed
- [12963] overlapping planogram email not sending emails
- [13308] Planogram not counting
- [13413] 'All Items' xls download not displaying any content
- [13458] Fixture 'Act as' feature showing different things in Desktop vs. Magellan
- [13596] Fixed 500 error when using content spreadsheet
- [13601] Add password_expires_at column to mass user upload

## [15.4.11.4]
### Fixed
- [13339] Security users edit: Show all regions hierarchy when no regions for admin users (again)

## [15.4.11.3]
### Fixed
- [13318] Overlapping Planograms feature isn't calculating overlapped planograms
- [13339] Security users edit: Show all regions hierarchy when no regions for admin users
- [13438] Url-Decode Attribute to Column map parameter values that the spreadsheet uploader passes between set and verify requests
- [13454] Photo Compliance Button not showing up on magellan
- [13456] Compliance by day report: calculating the incorrect compliance %'s
- [13475] Fix failure to delete a particular fixture that was added and deleted in the same campaign

## [15.4.11.2.4]
### Fixed
- [13486] Undelete category if soft deleted before destroying
- [13604] Fixture Count Report Problems in VZW
- [13670] templates for fixtures of future campaigns in VZW

## [15.4.11.2.2]
### Fixed
- [pt115860247] Fixure count report missing ability to chose prority

## [15.4.11.2.1]
### Fixed
- [#115860247] Fixure count report missing ability to chose prority
- [#118332431] T-Mobile Integraton: Location Feed upload.
- [13575] Fixture#find_templates should only return templates that have is_active true

## [15.4.11.2]
### Fixed
- [] Old planograms showing up on floorplans (reverted PR 3805)

## [15.4.11.1]
### Added
- [#115346429] Convert O2 location filters to r15.
- [#115860247] Fixure count report ability to chose prority
- [13430] Added support for multple regions and location when mass uploading users
### Changed
- [] Compliance Snapshot generation is now toggleable via a setting
- [] Turned off Jobber emails from filter caching
- [] updated the verison of the floorplan designer flash
### Fixed
- [#13078] Fixure count report missing ability to chose prority
- [13078] Fixure count report missing ability to chose prority
- [13397] Broken Filters in Contents Tab in VZW
- [13397] vzw filter content fix

## [15.4.10]
### Added
- [#114593731] Added nuke_all_fixtures method to Location
- [#114779535] Added report generation for initial fixtures
- [13226] Display hardware for FixtureGroup in Magellan
### Changed
- [13083] added translatable descriptions to ImportErrors
### Fixed
- [#113949173] Current campaign showed in a newly created location's dashboard now is the newest campaign whose filter matches the location.
- [#114424837] Fix archive reference file when Archive category doesn't exist
- [#114433547] Fix Planograms for some fixtures are not being displayed: area is blank
- [#114439193] Content_list_checked_columns not checking the columns for attrs specified
- [13107] let content settings determine fixture blinking without being over-ruled by upcoming_lights
- [13307] Fix floorplans report, had an issue when too many locations
- [13309] Fixed uploading CSV file in Spreadsheet uploader
- [13311] Spreadsheet location uploader should allow no region on updating location attributes
- [13328] id not necessary anymore in columns for viewing fixture counts report

## [15.4.9.28]
### Fixed
- [13988] Dealer Import update for Dealer Matrix Locations
- [14036] Added fixture types to Fixture Report: Memorable Wall

## [15.4.9.27]
### Fixed
- [13957] att bug ensure button compliance is resolved all at once
- [13969] New Attribute in Location.txt: OEM Wall and CSS Attribute
- [13970] New fixture for Fixture File: OEM Fixture
- [13992] Updates to Priority Report: Merchandising Abbreviations

## [15.4.9.26]
### Fixed
- [13227] Fix missing content placement associate_id
- [13510] Compliance setting dropping at locations

## [15.4.9.25]
### Fixed
- [13598] Fix CI Report for ATT
- [13724] Backroom Associated Device SKUs copy during during 'Import Campaign Settings' Jobber process
- [13923] Update Prescriptive Report for ATT

## [15.4.9.23]
### Fixed
- [13834] Additional Column to Future Wall Report
- [13835] Push Future Reports to current and sent to Archway SFTP
- [13877] Final Wall and Priority Report updates
- [13886] Dealer Import update for Dealer Matrix Locations

## [15.4.9.22]
### Fixed
- [13815] HIT capitalization
- [13834] Additional Column to Future Wall Report
- [13835] Push Future Reports to current and sent to Archway SFTP
- [13852] Compliance Requirements for Questionnaires are now location level instead of user level
- [13852] Compliance works for campaigns in the past in magellan
- [13877] Final Wall and Priority Report updates
- [13886] Dealer Import update for Dealer Matrix Locations

## [15.4.9.21]
### Fixed
- [13852] Compliance Requirements for Questionnaires are now location level instead of user level
- [13852] Compliance works for campaigns in the past in magellan

## [15.4.9.20]
### Fixed
- [13814] Update to Fixture(TED) Report: Accessory Panel to Memorable Wall
- [13815] New Attributes in Location.txt: MTI and new HIT attributes

## [15.4.9.19]
### Fixed
- [13736] update future merch column names and half wall totals calculation
- [13781] Priority Report Translation Project
- [13812] Slight tweak to Future Wall Report v2

## [15.4.9.18]
### Fixed
- [13708] clean files from rails/current/tmp/cache periodically
- [13761] Surveys on Magellan

## [15.4.9.17]
### Fixed
- [13610] Updated Future Wall Report
- [13716] Ted report update:Small C-fixture

## [15.4.9.16]
### Fixed
- [#117568425] DBID in breadcrum instead of store name (Magellan component)
- [13630] AT&T Prod: Fixtures with new POP/content not blinking in pending promotion
- [13639] Add favicon for AT&T Magellan
- [13655] Category dropdown on Magellan (ATT) needs "down arrow"

## [15.4.9.15]
### Fixed
- [13610] Fixed Future Wall Report for AT&T

## [15.4.9.14]
### Fixed
- [13317] QA R15.49: Image Gallery missing image totals in drop down
- [13651] New UI "Backroom Associated Device SKUs" not driving associated SKU if Primary SKU on layout
- [13656] Update "Backroom Associated Device SKUs" Interface/functionality
- [pt117568425] DBID in breadcrum instead of store name

## [15.4.9.13]
### Changed
- [#114439193] Content_list_checked_columns not checking the columns for attrs specified
- [11317] Matching Demo to Sellable SKUs
- [12890] Disable lockout due to failed logins for ATT
- [13226] Display correct hardware when viewing planogram
- [13546] Setting: "content_list_checked_columns" not working properly to default check-off and show content attribute columns

## [15.4.9.12]
### Changed
- [#112899423] Give details of why user create/update failed in Aurora.
### Fixed
- [#110847166] Role show page created
- [#114433957] Hooked up CVD v1.8.10 gem with corporate region compliances rollup fix
- [#116249523] CampaignsController#campaign_workbook setup for Resque background job
- [#116249627] FloorplansController#list_floorplans to create pdf uses Resque backgrounding system
- [#116249655] LocationsController#fixture_count xlsx download uses Resque backggrounding system
- [#116249811] LocationsController#index XLS download of LocationList uses Resque backgrounding system
- [#116249917] TemplatesController#generate_pick_and_pack uses Resque backgrounding system
- [#116317889] Hooked up CVD v1.8.13 which fixes IE11 parent issues visualization
- [#116321085] Hooked up CVD v1.8.11 which contains issue comments fix
- [#116321085] Hooked up CVD v1.8.12 which contains dupe issue comments fix
- [#116800949] Fixed All Content page, which showed new content as Existing
- [#117217699] Fixed 500 error in Issues and Login widgets in the admin dashboard.
- [#117531719] Ensure r12 to r15 clients 'rbm' user have no regions
- [#117536439] cleanup:daily task failing on vzw qa fixed
- [#117553563] Fix save new category
- [#117555099] Hooked up CVD v1.8.14 with fake root region fix
- [#117701785] Hooked up CVD v1.8.16 Fixed locations query and display when manager name col not specified
- [#117723491] Hooked up CVD v1.8.15 with issue serialization fix
- [#117729533] Fix locations filters on edit planograms using received_regions
- [#117850585] Past campaign counts are no longer being updated/created for certain filters
- [#117910535] Campaign workbook working only for active locations
- [#118048871] Planograms no longer disappear when a Campaign has no Filter
- [#118048871] Planograms no longer disappear when a Campaign only has subregions
- [#118139161] Editing a Campaign to make it Active or Future will recache filters
- [#13522] Add pagination to speed up search planograms
- [13586] Pog Assigner should ignore records older than the current campaign’s begin_at date
- [13596] Fixed encoding for content spreadsheet uploader
- [13607] Fixed Switch Out Fixtures Feature Missing Selection Option
- [] ATT Magellan
- [] Improve performance of FixturesController ajax_show FixturesController#ajax_show for SIMPLE PLANOGRAMS.
- [] Improve performance of Locations floorplan action.
- [] Improve performance of Reference action from the location dashboard.
- [] Improve performance when displayin planogram accordion for SIMPLE PLANOGRAMS.
- [] Removed LocationsController#Planogram_list
- [] mark_content_is_active skips locations with zero fixtures.

## [15.4.9.11]
### Fixed
- [13352] Split default_location_filter by breakline for att
- [13412] Allow report to complete by adding try to check for nil.
- [13412] Tweak crontab syntax for nightly sku position report
- [13446] Update Prescriptive Report columns for ATT
- [13474] 2 SOTF: Locations will not update when making changes to the floorplans

## [15.4.9.10]
### Changed
- [13412] increase jobber time out to allow Sku Position Report of All Core locations to complete.

## [15.4.9.9]
### Changed
- [13412] Run Sku Position Report as a nightly rake task
### Fixed
- [13467] Erroneous "0" Values in SOTF Wall Report Columns "Explorer Wall 1,Explorer Wall 2,Explorer Wall 3,Explorer Wall 4"

## [15.4.9.8]
### Fixed
- [13415] Locations list takes too long to display Show all locations from a filter

## [15.4.9.7]
### Changed
- [] Compliance Snapshot can now be enabled or disabled via Settings
### Fixed
- [13119] Click here link appears exactly once in ckeditor both in both places where critical information is created
- [13409] Fixed Login Fail Error in mobile.
- [13412] Fixed SKU Position Report Failing
- [13429] Fix second run of Import Campaign Settings

## [15.4.9.6]
### Fixed
- [] info page (and possibly others) were broken due to links that didn't include the mode

## [15.4.9.5]
### Changed
- [13357, 13382] Forked the journey gem and patched a bug that's been fixed in upstream rails but will not be backported into journey
### Fixed
- [13357] Archway can't log in, bad redirect.
- [13382] Mobile AT&T users can't log in via "Global Login"; blank screen instead.
- [13387] Fix column response value for questionnaire report on Multiple choise questions
- [13387] Fix questionnaire report when questionnaire type is Multiple Selection Multiple Choice Question
- [13389] Fix Floorplan PDF report for ATT

## [15.4.9.4]
### Changed
- [13185] Fixed caching of locations which postdate preceding campaigns
- [13303] Daily Dealer Import Process Wall Merch Updates
- [13360] Set container type when content is dummy
### Fixed
- [114576627] Att location dashboard style conflicts
- [13365] Grouped Fixtures not Regrouping

## [15.4.9.3]
### Changed
- [] reverted prematurely released content comments
### Fixed
- [13135] duplicate column headers in wall report
- [13342] Hardware items were not placing

## [15.4.9.2]
### Fixed
- [] Fixed AT&T crontab

## [15.4.9.1]
### Fixed
- [] AT&T Global Login now works with Rails 3.2

## [15.4.9]
### Added
- [#103196002] Modifications to support location fixtures for campaign completion
- [#109260874] Bring bulk_edit functionality from r12.
- [#111962803] Cron job to report on current campaigns
- [#113461299] Run Sift specs as part of Solano CI [#113461299]
- [] Search by filename to import/status page
### Changed
- [#107816142] All content page now separates new content from existing content.
- [#11053132, #113461299] Upgrade Sift to 2.1.3 [#11053132, #113461299]
- [#111089670] Not show distribution text, if field is not set
- [#111717444] POG List view is now clearer for the users
- [#112004429] Updated CVD tag to version that supports location campaign completion
- [#113877813] Remove current campaign from previous campaigns
- [#114031573] Update mark all fixtures compliant success message
- [13058] Update att rake tasks to include future reports jobs and add future merchandising report
- [13247] creates a photo FixtureComplianceRequirement for a copied template if parent template requires photo compliance.
- [] Added ability to move multilpe locations into a region on Region Admin screen
- [] Change payload being sent to OrderFront Encryption API to include user data of the user making the request. The authorization token is removed, relying solely on the shared encryption key for authentication.
- [] Location CID must be unique, and present, and IN the cid field going forward
- [] Print to SkuterRun indicating how fixture_placements are updated by content settings
- [] Removed deprecated references to campaign in ComplianceRequirement
### Fixed
- [#106660624] Fix Item Finder for SIMPLE PLANOGRAMS clients
- [#107816142] Fixed All content XLS report, which gave no results if a category was selected. The file also contains two new columns: "Fixture" and "New Item".
- [#111005696] RBM Admin role no longer automatically added to filters while updating them.
- [#111717444] POG List view is now clearer for the users
- [#113010851] Boolean conditions in location filters now show a dropdown with the options.
- [#113120887] Results in compliance report don't match what is displayed on location dashboard
- [#113187231] Fixed View mode for Fixture Counts report.
- [#113573501] Fix floorplans report hangs and never starts downloading.
- [#113861937] Planogram import now makes sure to set fixture type to parent acts_as in bby import
- [#113940825] ensure atomic filter caching via transactions
- [#114091081] Notifier now allows environment name in the mails subject through setting
- [112681719] base/composite filters fix when updating filters
- [113006277] Fix Content replaces: Item list is not displayed
- [13015] [13015](https://redmine.rbmtechnologies.com/issues/13015) Don't automatically overwrite BBY merchandising category colors once they are set
- [13067] New Column Headers for Fixture Report: Special Mural Graphic and Fabric Frame Fixture
- [13090] Updates to SOTF Wall Report: Power, Personalization 3 and Win Local Name Change
- [13107] fix SKUter fixture highlighting
- [13107] let content settings determine fixture blinking without being over-ruled by upcomingh_lights
- [13117] New Column Headers for SOTF Fixture Report: SOTF Special Mural Graphic and SOTF Fabric Frame Fixture
- [13124] 500 Error on planogram overlay edit resovled
- [13177] [13177](https://redmine.rbmtechnologies.com/issues/13177) Improve performance of VZW content counts report
- [13234] remove column headers from Location.txt for :load_feed task
- [13244] fix slow floorplan viewing for SIMPLE PLANOGRAM clients
- [13260] [13260](https://redmine.rbmtechnologies.com/issues/13260) Email sending tool is now rate limited and thus mass emails should work.
- [13261] Update to Location.txt Regions: South East and North East
- [13291] Add mapping for type in SpreadsheetsController#choose_fields
- [13298] Fixture file name change
- [13303] Daily Dealer Import Process Wall Merch Updates
- [] fix syntax error in previous commit for rm13107
- [] updated BBY SSO Cert for BBY UAT

## [15.4.8.1]
### Added
- [13226] Display fixture type parts for their fixture groups
### Changed
- [13012] Count compliance images by campaign
- [13262] Check if category exists for issue in store manager issues box
### Fixed
- [13232] Fix order of before_filters to fix the redirect for users with expired passwords.

## [15.4.8]
### Fixed
- [#112649765] Changed location filter dropdowns that showed too many filters. They now use FiltersHelper#user_location_filters or Filter#accessible.
- [#113202959] Fix Merchandising Cloud translation
- [13145] Fix broken fixture type images
- [13221] Fix backroom during f_placement
- [] Fix simple_mark_as_compliant! so that it uses the current campaign for the location

## [15.4.7]
### Added
- [13103] Code to port planogramed pops from one campaign to another
### Changed
- [#104191200] Upgrade CVD to 1.8.2 [#104191200]
- [#111337820] Improve performance of Compliance Report by adding database index to FilterLocations on [location_id, campaign_id]
- [#13106] Improve performance of mark_content_is_active rake task around 17%
- [#13108] Improve performance of vzw:device_brand_presence_report task.
- [] Add setting to determine whether to use completion dashboard or "classic" compliance dashboard
- [] Added X-vmm-instance mail header to indicate what box an email came from
- [] Dropdown boxes in aurora User search now acts like search boxes
- [] Improve fix_dupe_container_types script to consider container types without type
- [] Move Content Count Report SITE_CONFIG configurations into Layer Cake
- [] Removed Hirb gem which was altering console output
- [] Revert configuration of dashboard widgets back to settings
- [] Verify OrderFront SSL Certificate when making requests to thier APIs in all environments
- [] rake task to update location cache for all needed campaigns but only a single location
- [internal] SpawnedReports class moved into its own file
### Fixed
- [#110995660] Fixed bug in "Locations displaying this planogram" page that caused the same locations to be displayed for a planogram and a newer version of that planogram.
- [#111793358] Fix Campaign Workbook report: campaign's launch date doesn't match exactly the one in the report
- [#112056243] Check if there are custom_headers in the layer_cake before adding them to the table.
- [#112059435] Show confirmation message when a filter is created or updated.
- [#112071547] Print All Planograms and Print Non Compliant Planograms reports don't include fixtures that are in the additional fixtures box.
- [#112424927] Fix compliance image report does not show images bug
- [#112700557] Fix Available Planograms table: sorting by any of the headers makes the number of available planograms change.
- [#112805983] Remove duplicated merchandising filter
- [112650775] [112650775](https://www.pivotaltracker.com/story/show/112650775) 500 error when choosing "All Locations" filter in Content Count Report
- [13092] Stop excessive (and/or segfaulting) Image creation when uploading Content zip files.
- [13119] fix for Crit Info duplicate 'Click here' links
- [13156] Fixed content uploader not recognizing changes when headers are differents as attribute categories
- [13178] [13178](https://redmine.rbmtechnologies.com/issues/13178) Fixed Viewing Content List with Images triggers 500 error
- [13308] Fix incorrect Content planogram counts when Campaign has no region assigned
- [] (Aurora) Fixed 414 error so that an admin can retrieve larger numbers of locations when assigning to a user
- [] Fix bug with application mailer sending pre-production messages back to user in production
- [] Fix content counts report not counting right.
- [] Fixed bug in Supply Chain Report (download version from reports page)
- [] Fixed bug in syncer which was causing objects not to sync
- [] Fixed bug related to default display of location accordion
- [] Improved performance of Content Counts Report by adding Campaign into the filter.locations scope
- [] Increased performance of compliance report for VZW and BBY.

## [15.4.6.2]
### Fixed
- [13175] [13175]: Fix error when copying planograms into new promotions
- [13180] Fix site host for vzw production

## [15.4.6.1]
### Added
- [108482928] [108482928](https://www.pivotaltracker.com/story/show/108482928) assign single/multiple locations when creating a user
- [] Aurora security page with routing for permissions and users
- [] Fix bug with application mailer sending pre-production messages back to user in production
### Fixed
- [] Fix bug with application mailer sending pre-production messages back to user in production

## [15.4.6]
### Changed
- [#111994861] Show "No Value" text when the attribute is read only and has no value
- [13084] Change the BBY SSO URL for VMM's logout link in `bby_site_config.yml`.
### Fixed
- [#110886364] when changing a location attribute, ensure all affected filters are updated in the filter cache
- [#111803616] Fix content counts report not counting right.
- [#112056243] Check if there are custom_headers for every feedback also.
- [#112091851] Removed broken duplicate of feedback popup.
- [#112599505] restricted users weren't seeing unrestricted filters
- [#112681719] Fix base/composite filter cache updates.
- [13031] Check if totals exists when there are 1 or no locations to be showed in the report.
- [13031] Fix 404 for optus and nil exception when no fixture columns
- [13038] fix FixturePlacement#for_user method to compact blocking_fixtures as the hidden_fixture_types for users contain nil values
- [13053] added "All Locations" options to remaining Reports pull downs
- [13074] When creating a location report, remove unnecesary dup method.
- [13097] Got emails working from the send emails tool
- [13120] f_placements call for supply chain fragment doesn't fail
- [13121] get the correct count for adding layouts
- [] Append original emails to email's body in non-production environments.
- [] fix root_placement for fixture_type in l_placement
- [] improve performance of ALayoutPlacementGroup#active_placements
- [] remove clone method from Skuter.share
- [] remove performance changes to a_layout hirearchy models
- [rm13097] Update aws-ses gem to fix bcc for emails

## [15.4.5]
### Fixed
- [#112056243] Check if there are custom_headers in the layer_cake before adding them to the table.
- [13038] fix FixturePlacement#for_user moethod to compact blocking_fixtures as the hidden_fixture_types for users contain nil values
- [] Fix hook to update Filter Cache on Location attribute change to use "future" campaigns instead of "unlaunched" campaigns
- [] Removed guts of unnecessary migration that was taking ages.
- [] fix root_placement for fixture_type in l_placement

## [15.4.4]
### Fixed
- [#112006979] Allow unlocking user.
- [#112238987] Fix form_tags in skuter_run show page.
- [#13109] Fix Questionnaires missing Location Filter component.
- [12972] [12972](https://redmine.rbmtechnologies.com/issues/12972) When mass uploading
- [] Corrected ordering of contents by label in print planogram, all planograms, and non-compliant planograms pages
- [] Fixed Location accordion wrapping
- [] Fixed bug in overlapping planograms
- [] Fixed bug in syncer which was causing objects not to sync
- [] Fixed bug with error handling for filters, a_filters, and error handler
- [] Fixed test of if a user had appropriate roles to edit an Afilter
- [] Increased performance of compliance report for VZW and BBY.
- [] Report Filter pull downs now offer "All Locations" option.
- [] background color of content numbering on planograms is white again

## [15.4.3]
### Changed
- [] BBY content sync now uses only the custom field map to decide which fields to sync
- [] Removed Verizon's custom login help page (with usernames and passwords)
- [] Undid previous css change to hide help text with usernames and passwords
- [] When editing the parent reference category, disable parent category's dropdown

## [15.4.2]
### Changed
- [] temporarily hid VZW's login help with all the usernames and passwords.

## [15.4.1]
### Added
- [#101397246] Scripts to update dropdowns in AT&T issue form.
- [#110807258] Add a migration to set DEFAULT 'Fixture' NOT NULL to the :type attribute of the fixtures table.
- [#111237322] Add missing rake task form vzw
- [#111328966] Migration to remove all reference categories without regions for vzw client
### Changed
- [#110807258] Refactor is_mirrored? method and added tests.
- [101394226] Add "execution_manager" field to User and to the AT&T feed import.
- [101396938] Add "Execution Manager" to form for reporting Fixture issues (AKA Feedback).
- [101397494] Remove "Store Name" from AT&T fixture feedback form
- [111009918] Redefine relation in fixture model to find deleted fixture_types.
- [12482] ... but exclude the execution_manager param during VMM Feedback creation.
- [] Ancestors of the regions are now taken into consideration for view reference files categories
- [] Expedited execution of migration that makes hidden r12 filters remain hidden
- [] Improve Location's refersh_filters method performance
- [] Location Filters list headers now translated & "Roles" changed to "Role Restrictions"
- [] New AFilters no longer have any Role restrictions associated with them.
- [] Upgrade CVD to 1.7.0
### Fixed
- [#110197288] fixed all_content page bug
- [#110991798] corrected algorithm that chooses what filters a user can see
- [111184512] Refactor options_from_category_table method.
- [] CSS and HTML cleanup for Aurora
- [] Correted delivery state icons being loaded in association with shipments.
- [] Final iteration of photo compliance migration for SIMPLE_PLANOGRAMS
- [] Fix edit content filters when no roles assigned to filter
- [] Fix some spurious spec failures
- [] Fixed "Mark All Fixtures Compliant" button shouldn't target fixtures requiring Photo Compliance
- [] Fixed 500 error in Location Order report, in PCS and O2.
- [] Fixed mark_content_is_active rake task
- [] No longer blows up when trying to load an incorrectly deleted fixture type from a non-deleted fixture
- [] Removed duplicate location filters from dropdowns.
- [] Retrieved comments on fixtures for "Print All Planograms" report
- [] Translated "Merchandising Cloud" (and other things) in all the notifier emails.
- [] Update 'show_been_reordered_radio_buttons' to return boolean for setting to work correctly when off
- [] Update the filter cache when a location's attributes are updated.
- [] When Issues are resolved in r12, they return to their previous state regarding compliance
- [] add cron job which runs middle of day and night to ensure most recent and future campaigns are cached
- [] fix feedback_spec for non SIMPLE_PLANOGRAMS clients
- [] fix hook to update filter cache on location attr change to use 'future' instead of 'unlaunched'
- [] fix vzw show filter page when no roles assigned to filter
- [] improve Placement::Status performance, and facilitate Placement testing for different clients/campaigns/locations
- [] optimize LocationFilter code which find composite filters which need to be re-cached

## [15.4.0]
### Added
- [#110173204] Add new_items and all_items configurations for o2
- [#110512054] Add Campaign shipments for vzw
- [#110807258] Add a migration to set DEFAULT 'Fixture' NOT NULL to the :type attribute of the fixtures table.
- [#111237322] Add missing rake task form vzw
- [#111328966] Migration to remove all reference categories without regions for vzw client
- [101397246] Scripts to update dropdowns in AT&T issue form.
- [101397246] [101397246]: https://www.pivotaltracker.com/story/show/101397246
- [101397334] [101397334]: https://www.pivotaltracker.com/story/show/101397334
- [110161388] Add tests for questionnaires.
- [111011148] Aurora: new layout/design for setting password expiration; migration for new User column 'password_updated_at'
- [111011148] [111011148]: https://www.pivotaltracker.com/story/show/111011148
- [] Add switch on campaigns to include them in completion calculations.
- [] Add validation for content types in spreadsheet uploader under Contents tab
- [] Added "Total Count" row on fixture types Location Counts.
- [] Added a public facing API endpoint that provides user profile data in JSON format to Archway Orderfront. API requests require a GUID authorization token issued by RBM, as well as a decryption key issued by Archway to access user data via the API
- [] Added default_campaign_dashboard_image on settings.yml
- [] Added the ability to duplicate an existing user in Aurora
- [] Additonal SKUter performance improvements.
- [] Ajax functionality and table to the User Dashboard in Aurora
- [] Automated weekly_complaince_report for o2
- [] Consolidate questionnaire logic from floorplan and fixture controllers to service object and improve performance
- [] Genericized ajax textbox to replace selects that have too many options
- [] Make questionnaires viewable to all roles by default
- [] Migration to transfer O2 virtual fixture data from old o2 column into the FixtureType exclude_from_compliance column, and adjust the Virtual Fixture attribute to point to that column
- [] Order For Solution report for o2
- [] Refractor bby.rake imports. Now only have one data structure for errors instead of 2
- [] Replaced replacement_content select box with replacement_content ajax textbox
- [] Translated "Merchandising Cloud" (and other things) in all the notifier emails.
- [] Update 'show_been_reordered_radio_buttons' to return boolean for setting to work correctly when off
- [] Updated bottom-content-upper styling from Locations Dashboard page
- [] add cron job which runs middle of day and night to ensure most recent and future campaigns are cached
- [] add task to check and confirm the filter cache contains all needed campaigns
- [] correct the determination of new fixtures in Placement::StdPlacement.build_indexed_fixtures
- [] data loader should only provide matching_filter_ids to plano_assignment_only
- [] improve Placement::Status performance, and facilitate Placement testing for different clients/campaigns/locations
- [] optimize LocationFilter code which find composite filters which need to be re-cached
### Changed
- [#110435324] Remove configurable compliance percentage in locations dashboard.
- [#110807258] Refactor is_mirrored? method and added tests.
- [#111615280] Remove unnecessary calls to '.dup'.
- [101394226] Add "execution_manager" field to User and to the AT&T feed import.
- [101396938] Add "Execution Manager" to form for reporting Fixture issues (AKA Feedback).
- [101397494] Remove "Store Name" from AT&T fixture feedback form
- [111009918] Redefine relation in fixture model to find deleted fixture_types.
- [] Added 'New User' and 'Batch Upload New Users' links to new user layouts (Aurora project)
- [] Added Cost summary inside spawn_request and show the progress
- [] Added Placement.place option for developers to avoid valid content checking.
- [] Added a bang and documentation/specs to DateTimeParamsValidator.
- [] Added fixture attributes to Print View page.
- [] Added update_type to the server-side filtering logic on planogram_overviews page
- [] Ancestors of the regions are now taken into consideration for view reference files categories
- [] Aurora user find table updated with new look and feel
- [] BBY default image for SKU content should be blue square, all other Content should be "No Image Uploaded" image
- [] Change names of questionnaire compliance methods
- [] Changed BBY default image to 'app/assets/images/bby/sku_icon.png'
- [] Delete manufacturer column from content for o2
- [] Expedited execution of migration that makes hidden r12 filters remain hidden
- [] Further improvement to Placement.place by reusing fixturer and skauble loads.
- [] Implemented new ReferenceFile/edit end_at UI for new and zip upload pages
- [] Improve performance of fixture comments speeding up FixturesController#ajax_show
- [] Improve performance of group_by methods used by FixturesController#ajax_show
- [] Improved Placement.place performance by reducing model loads from the data base.
- [] Location Filters list headers now translated & "Roles" changed to "Role Restrictions"
- [] Moved filtering logic on planogram_overviews page to jQuery
- [] New AFilters no longer have any Role restrictions associated with them.
- [] Switched out chosen for select2
- [] Updated the RBM Validator gem
- [] Upgrade CVD to 1.5.3
- [] Upgrade Sift to 2.0.2
- [] Upgraded Rails to 3.2.22
### Fixed
- [#109269292] Add attributes to ContentsController index.
- [#110161388] Allow edit on launched questionnaire.
- [#110197288] fixed all_content page bug
- [#110959082] Fix compliance report counts
- [#110991798] corrected algorithm that chooses what filters a user can see
- [108618770] fixed the ability to edit content that doesn't have a category.
- [109269292] Check if there's a content filter when loading list page.
- [111184512] Refactor options_from_category_table method.
- [12322] Sets failed authentications to 0 upon successful login for all authentication sources.  Previously only done for users with local authentication source.
- [12745] When editing a ReferenceFile, don't default to adding an end_date.
- [] Add a validation if the reference file has no end date
- [] Add mode to header links generator
- [] Add old hard coded ATT Location attributes as actual attributes
- [] Added O2 logo for login form.
- [] Allow Categories like "Language" or other models like "Region" to have dropdowns when adding filter conditions
- [] Avoid have the type attribute_category on the form on multiple upload form
- [] Avoid have the type attribute_category on the form.
- [] CSS and HTML cleanup for Aurora
- [] Change ATT AFilter special cases back to constants in order to fix performance problems
- [] Changed colors in O2 dashboard, as a part of the o2 brand theme setup.
- [] ContainerType list page should now list all ContainerTypes, not just those without a type.
- [] Content edit page now correctly assigns container_type for metric systems
- [] Correct Reference Number in VZW
- [] Corrected one of the unit test helpers with regards to RBM Admin role
- [] Correted delivery state icons being loaded in association with shipments.
- [] Fill in the Item Finder pull down for Simple Planograms clients
- [] Final iteration of photo compliance migration for SIMPLE_PLANOGRAMS
- [] Fix 500 error when creating a new reference file in some circumstances
- [] Fix edit content filters when no roles assigned to filter
- [] Fix regression in Fixture.compliant where auto_compliant Campaigns and exclude_from_compliance FixtureTypes where ignored
- [] Fix some spurious spec failures
- [] Fixed "Mark All Fixtures Compliant" button shouldn't target fixtures requiring Photo Compliance
- [] Fixed "Switch User" regression on admin dashboard
- [] Fixed 500 error in Location Order report, in PCS and O2.
- [] Fixed 500 error when saving labor assignments for BBY.
- [] Fixed 500 in location dashboard due to compliance bug
- [] Fixed 500 when uploading image to the gallery via the fixture
- [] Fixed Fixture/Planogram Mirroring.
- [] Fixed Issues List Report for a location, which wasn't displaying content orders.
- [] Fixed POS and Accessories tabs for fixtures, which were displaying no content.
- [] Fixed Tools > 'Send Email' for vzw
- [] Fixed bug that didn't allow users to enter fixture priority when creating or editing a comment.
- [] Fixed bug that wiped a planogram's content after copying it.
- [] Fixed copy questionnaire to have intact the original
- [] Fixed creation of fixture_types in VMM: now all attributes update
- [] Fixed edit floorplan page doesn't finish load.
- [] Fixed end date bug for ReferenceFiles where time zone issues were causing end_date to be the day before it was set.
- [] Fixed error after grouping items in the planogram editor
- [] Fixed error that showed no changes after uploading a content spreadsheet.
- [] Fixed fixture photo upload
- [] Fixed mark_content_is_active rake task
- [] Fixed param name from 'switch_user_id' to 'id' to match expected route path
- [] Fixed server error when running cost summary report
- [] Fixed upload multiple content form
- [] Fixed vzw download supply chain
- [] Fixed vzw-specific load attribute feed from sldb db
- [] Fixed vzw-specific search from locations page
- [] FixtureTemplate#composited_image_sha_with_default no longer breaks when an image exists
- [] Got rid of nav jump for BBY.
- [] Improved performance on just_added_reference_files method.
- [] Include black option on Item finder's pull-down of content.
- [] Let SKUter handle empty backroom content
- [] Made filters helper stop blowing up when there wasn't a user
- [] No longer blows up when trying to load an incorrectly deleted fixture type from a non-deleted fixture
- [] Photo Compliance for SIMPLE_PLANOGRAMS only last for the campaign they're set in
- [] Removed duplicate location filters from dropdowns.
- [] Retrieved comments on fixtures for "Print All Planograms" report
- [] Revoved extension from stylesheet reference in edit_image_collection partial
- [] Set default edited_at for ReferenceFiles to Postgres NOW() instead of hard coded date
- [] Update the filter cache when a location's attributes are updated.
- [] Users created with LDAP (RBM Admins) now have just the RBM Admin role and no regions.
- [] When Issues are resolved in r12, they return to their previous state regarding compliance
- [] When questionnaire is launched, disable targeting fields.
- [] fix feedback_spec for non SIMPLE_PLANOGRAMS clients
- [] fix vzw Syncer bugs impacting SLDB feed and Locations upload spreadsheet
- [] fix vzw show filter page when no roles assigned to filter
- [] the pog list view may now be sorted in either direction
- [] vzw only: deassign all roles from filters

## [15.3.15]
### Changed
- [13058] Future Reports: Remerch 2016 Segmentation.
- [] Add "future_wall_report" with updated column headers and totals.
- [] Update att rake tasks to include "future" reports (targeting segmentation campaign 1410)
### Fixed
- [13225] Planogrammed Dealers Ommitted from Fixture and Wall Reports sent to Archway
- [13230] Receiving 500 ERROR at Non Exclusive locations

## [15.3.14]
### Fixed
- [12882] Uploads in iPOG tickets do not show in Zendesk tickets.
- [13030] Needed updates to Prescriptive Report (Jobber page) requested/approved by ATT
- [13142] att uat global login link is wrong
- [13195] AT&T Prod: Compliance Report pulling incorrect data

## [15.3.13]
### Fixed
- [12792] New Attribute for Location File: Segmentation
- [13162] Fixed Sharing conditions link

## [15.3.12]
### Fixed
- [12965] Fixed default selection for location accordion

## [15.3.11]
### Fixed
- [12342] SOTF Fixture Report from Jobber page has filename discrepancies that should be fixed
- [12389] added clear button to extra skuables form
- [13038] fix FixturePlacement#for_user moethod to compact blocking_fixtures as the hidden_fixture_types for users contain nil values
- [13039] fixed device or accessory column not displaying properly
- [13046] Auto populating a fixture on Dealer Matrix
- [pull/3053] Display /changelog as HTML from CHANGELOG.md

## [15.3.10]
### Fixed
- [12926] Fix Device Reference page 500 error
- [12954] Display fixture comments only for the given campaign
- [12987] New Attribute in Location.txt "GoPhone International SIM Chit"
- [12997] SOTF Wall Report Update: Personalization 2
- [13016] Exception when re-rendering Feedback submission form after user error.
- [13016] Re-render Feedback form without user attr.
- [pr2962] Skuter: correct build_indexed_fixtures so it captures changes to a location's fixtures

## [15.3.9]
### Fixed
- [101394226] Add "execution_manager" field to User and to the AT&T feed import.
- [101396938] Add "Execution Manager" to form for reporting Fixture issues (AKA Feedback).
- [101397246] Scripts to update dropdowns in AT&T issue form.
- [101397494] Remove "Store Name" from AT&T fixture feedback form
- [12482] ... but exclude the execution_manager param during VMM Feedback creation.
- [12636] Jobber the SKU Position Report, Refactor SkuPositionReport to be 10x faster
- [12926] Update Device Reference Page to reflect the updated Accessory Reference  Page
- [12953] Survey Questionnaires not functioning properly (addendum)
- [12973] User's FMM Field not being populated in zendesk tickets
- [12979] 500 Error while downloading SKU Position Report on Floorplan Page

## [15.3.8]
### Changed
- [12977] Dealer Import update for dealer matrix

## [15.3.7]
### Changed
- [12619] January 2016 Wall Report Updates "Protection" and "Promo"
- [12854] Daily Dealer Import New Merch Types
- [12919] No shares displaying for any Accessory on any fixture
- [12953] Change questionnaire accessibility such that when a questionnaire has no roles, all users can view the questionnaire
- [12953] Survey Questionnaires not functioning properly
- [13092] Upgrade RMagick to v2.15 because safer C.
- [] Further improvement to Placement.place by reusing fixturer and skauble loads.
- [] Improve Placement.place performance by ~20% by using matching_filters in the LPlacement steps
- [] Make questionnaires viewable to all roles by default
### Fixed
- [13092] Stop excessive (and/or segfaulting) Image creation when uploading Content zip files.

## [15.3.6]
### Changed
- [12772] AT&T Update to SOTF Wall Report: added Personalization 1, Personalization 2, Power Wall, Promo, Explore Accessory Fixture
- [12773] AT&T Update to SOTF Fixture Report: added OEM Nesting Table
- [12774] AT&T Update to New Fixture for Fixture Report: Accessory Panel

## [15.3.5]
### Fixed
- [12922] Editing content no longer causes 500 error when the alayout structure resembles bby's.

## [15.3.4]
### Fixed
- [12913] Layout Placement Group doubling in AT&T production

## [15.3.3]
### Fixed
- [12767] image gallery looks different on qa pull#2661
- [12775] Fix 500 when uploading image to the gallery via the fixture (pull2660)
- [12823] ATT QA: Dashboard Information Missing: Have resolution
- [] Add old hard coded ATT Location attributes as actual attributes
- [] Change ATT AFilter special cases back to constants in order to fix performance problems
- [] Change ATT content form to accept Container Type width and height fields instead of dropdown
- [] Remove extra 'Click here' text/link in Critical Information window

## [15.3.2.2]
### Fixed
- [] Fixed unintended Reference File archiving

## [15.3.2.1]
### Added
- [] Added Tom's improvements to rake task to update filter locations cache

## [15.3.2]
### Added
- [] Add Total Count row to Fixture Count report
- [] Added lower(item_number) index to the contents table
- [] Fixed creation of fixture_types in VMM: Now all attributes update
- [] Spreadsheet upload region handling improvement
- [] add item number lower index to the contents table for all the clients
- [] removes hard-coded display name field from fixturetypes
### Changed
- [] Upgrade CVD to 1.4.3.
### Fixed
- [] AFilters can have CSV values for IN, NOT IN conditions
- [] Adding region condition to a location filter now raises meaningful alert if the region is invalid.
- [] Category translations are not deleted upon migrating a client
- [] Choose Filter in reports no longer includes old style filters.
- [] Fix 500 error when creating a new reference file in some circumstances
- [] Fixed 500 error in new role page.
- [] Fixed selecting a location to switch to from the Switch to Locations drop down takes me to another location
- [] Fixed tab links colors for vzw client
- [] Fixed vzw location syncer
- [] Fixture Template Placements are not deleted upon migrating a client
- [] Scenario accessory categories and scenario fixtures are preserved when migrating a client
- [] Speed up a very long migration upon migrating a client
- [] Spreadsheet uploader finds metric ContainerTypes correctly
- [] Translations of varying sorts are not deleted upon migrating a client
- [] Upon migrating a client, unreferenced content with nil item number and nil name are deleted
- [] VZW Filter import migration correctly handles filter 1104, and uses the new AFilterController coumn_index method

## [15.3.1.2]
### Changed
- [12763] Overlapping Planograms feature isn't calculating overlapped planograms
- [12943] Planograms were not going to a location
- [12945] 'Planogram Count' shows all content as inactive
- [12991] 500 error on content filter tab

## [15.3.1]
### Fixed
- [] Spreadsheet uploader finds metric ContainerTypes correctly

## [15.3.0]
### Added
- [] Add config.scss for optus client
- [] Added branding for sgh
- [] ConfigurationHelpers module in spec/support with stub_simple_planograms(boolean) method
- [] Enable Ability to Archive Reference File Categories
- [] Enable creation of 2nd location
- [] Make branding for SGH visible on login page
### Changed
- [] Campaign Workbook and Cost Summary reports only count new contents for a campaign
- [] Critical information conditions on comments now require merchandising type or fixture type to be entered before entering priority.
- [] Make bby content behaviour as default
- [] Moved RabbitMQ config to ENV VARs
- [] Reference files buttons style
- [] Reference files table style
- [] Remove CONDITIONS_INDEX constant from AFilter
- [] Remove need for AFiltersController decorators
- [] Removed Optus file that compensated for bug in spreadsheet gem (no longer needed)
- [] Removed SIMPLE_PLANOGRAMS argument from Report::CampaignWorkbook.new
- [] Removed act_as_paranoid from Container Types
### Fixed
- [] Add BBY specific compliance_info method to Location.rb in bby site
- [] Campaign planograms report now shows content for pending campaigns
- [] Changed Optus primary color to #1AA2AC to match branding
- [] Comments target fixture priority correctly.
- [] Created migration to set the default permitted operations on all existing fixture types.
- [] Data mainpulation for print_content moved to a services object. No change to user behavior.
- [] Dont show 'ID' column for Campaign Planograms if there are no placement.labels
- [] Fix photo_compliance for SIMPLE_PLANOGRAMS
- [] Fixed bug in overlapping planograms
- [] Fixed content targeting for comments when SIMPLE_PLANOGRAMS=true
- [] Fixed get_attributes method to use instance variables instead of class variables
- [] Fixed incorrect time of compliance image upload in compliance "images report".
- [] Fixed planograms attach themselves to comments by default.
- [] Improve performance of app/views/floorplans/show.xml.builder used by the floorplan view
- [] New content on new planograms now show up as new with corresponding highlighting
- [] Overlapping planograms works again
- [] Removed Image column in output xls for content
- [] Require new version of Sift (v1.0.1), with some tweaks to help deployment
- [] Tweak CodeClimate configuration
- [] Upgrade CVD to 1.4.2
- [] fixes undefined method 'distinct' error when a migration or rake task is run
- [] planograms can now have multiple team_assignments assigned to it
- [] region_children.html.haml partial traverses region hierarchy correctly.
