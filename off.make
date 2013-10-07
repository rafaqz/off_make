
;Build META codebase
core = 7.x

api = 2
projects[drupal][version] = "7.21"


; Build OFF codebase

; This is a stub make file that builds apon the core collabco make file.
; Modules and features added here will not be turned on during the base install,
; you can turn them on manually in modules or features pages, or turn them on in
; an install script or a custom install hook.
;
; The purpose of separating the modules is to enable forking of individual
; components - just specify a different git [branch] or separate repo [url]
; for the module, theme or library.

; These features also contain their own make files that may download further 
; modules or libraries.

;@TODO - proper feature versioning, drupal releases or git tags??
;      - use develop and master branches for dev and prod builds, duplicating
;      this file for both. Would be nice to do this from a template with a rake
;      task so we only need to update one version...
;      - finishing moving all specific dependencies to make files in feature repos.

core = 7.x

api = 2
projects[drupal][version] = "7.21"

; +++++ Profiles +++++

; This installs the base collabco site. which dosnt do very much on its own...
projects[collabco][download][type] = "git"
projects[collabco][download][url] = "git@github.com:rafaqz/off_install_profile.git"
projects[collabco][type] = "profile"

; +++++ Modules +++++
;
; For nginx servers.
projects[filefield_nginx_progress][subdir] = "contrib"
projects[filefield_nginx_progress][version] = "2.3"

; +++++ Custom Modules +++++
projects[iin_navigation_block][type] = "module"
projects[iin_navigation_block][download][type] = "git"
projects[iin_navigation_block][download][url] = "git@github.com:rafaqz/off_navigation.git"
projects[iin_navigation_block][download][branch] = "off"
projects[iin_navigation_block][subdir] = "custom"

; +++++ Features +++++
projects[collabco_conversation_feature][download][type] = "git"
projects[collabco_conversation_feature][download][url] = "git@github.com:Collabforge/collabco_conversation_feature"
projects[collabco_conversation_feature][download][branch] = "iin"
projects[collabco_conversation_feature][type] = "module"
;projects[collabco_conversation_feature][version] = "1.0-alpha1"
projects[collabco_conversation_feature][subdir] = "features"

;projects[collabco_capabilities_feature][download][type] = "git"
;projects[collabco_capabilities_feature][download][url] = "git@github.com:Collabforge/collabco_capabilities_feature"
;projects[collabco_capabilities_feature][type] = "module"
;;projects[collabco_capabilities_feature][version] = "1.0-alpha1"
;projects[collabco_capabilities_feature][subdir] = "features"

projects[collabco_event_feature][download][type] = "git"
projects[collabco_event_feature][download][url] = "git@github.com:Collabforge/collabco_event_feature"
projects[collabco_event_feature][type] = "module"
;projects[collabco_event_feature][version] = "1.0-alpha1"
projects[collabco_event_feature][subdir] = "features"

projects[collabco_extension_service_feature][download][type] = "git"
projects[collabco_extension_service_feature][download][url] = "git@github.com:Collabforge/collabco_extension_service_feature"
projects[collabco_extension_service_feature][type] = "module"
;projects[collabco_extension_service_feature][version] = "1.0-alpha1"
projects[collabco_extension_service_feature][subdir] = "features"

projects[collabco_knowledge_feature][download][type] = "git"
projects[collabco_knowledge_feature][download][url] = "git@github.com:Collabforge/collabco_knowledge_feature"
projects[collabco_knowledge_feature][type] = "module"
;projects[collabco_knowledge_feature][version] = "1.0-alpha1"
projects[collabco_knowledge_feature][subdir] = "features"

projects[collabco_profile_feature][download][type] = "git"
projects[collabco_profile_feature][download][url] = "git@github.com:Collabforge/collabco_profile_feature"
projects[collabco_profile_feature][download][branch] = "iin"
projects[collabco_profile_feature][type] = "module"
projects[collabco_profile_feature][subdir] = "features"

projects[collabco_slideshow_feature][download][type] = "git"
projects[collabco_slideshow_feature][download][url] = "git@github.com:Collabforge/collabco_slideshow_feature.git"
projects[collabco_slideshow_feature][type] = "module"
projects[collabco_slideshow_feature][subdir] = "features"

projects[collabco_message_feature][download][type] = "git"
projects[collabco_message_feature][download][url] = "git@github.com:Collabforge/collabco_message_feature.git"
projects[collabco_message_feature][type] = "module"
projects[collabco_message_feature][subdir] = "features"

projects[collabco_organisation_feature][download][type] = "git"
projects[collabco_organisation_feature][download][url] = "git@github.com:Collabforge/collabco_organisation_feature"
projects[collabco_organisation_feature][type] = "module"
;projects[collabco_organisation_feature][version] = "1.0-alpha1"
projects[collabco_organisation_feature][subdir] = "features"

projects[collabco_mail_feature][download][type] = "git"
projects[collabco_mail_feature][download][url] = "git@github.com:Collabforge/collabco_mail_feature"
projects[collabco_mail_feature][type] = "module"
;projects[collabco_mail_feature][version] = "1.0-alpha1"
projects[collabco_mail_feature][subdir] = "features"

projects[collabco_search_feature][download][type] = "git"
projects[collabco_search_feature][download][url] = "git@github.com:Collabforge/collabco_search_feature"
projects[collabco_search_feature][type] = "module"
;projects[collabco_search_feature][version] = "1.0-alpha1"
projects[collabco_search_feature][subdir] = "features"

projects[collabco_user_stats_feature][download][type] = "git"
projects[collabco_user_stats_feature][download][url] = "git@github.com:Collabforge/collabco_user_stats_feature"
projects[collabco_user_stats_feature][type] = "module"
;projects[collabco_user_stats_feature][version] = "1.0-alpha1"
projects[collabco_user_stats_feature][subdir] = "features"

projects[off_feature][download][type] = "git"
projects[off_feature][download][url] = "git@github.com:rafaqz/off_feature"
projects[off_feature][type] = "module"
;projects[off_feature][version] = "1.0-alpha1"
projects[off_feature][subdir] = "features"

projects[off_overrides_feature][download][type] = "git"
projects[off_overrides_feature][download][url] = "git@github.com:rafaqz/off_overrides_feature"
projects[off_overrides_feature][type] = "module"
;projects[off_overrides_feature][version] = "1.0-alpha1"
projects[off_overrides_feature][subdir] = "features"

projects[off_membership_form_feature][download][type] = "git"
projects[off_membership_form_feature][download][url] = "git@github.com:rafaqz/off_membership_form_feature"
projects[off_membership_form_feature][type] = "module"
;projects[off_membership_form_feature][version] = "1.0-alpha1"
projects[off_membership_form_feature][subdir] = "features"

projects[off_idea_feature][download][type] = "git"
projects[off_idea_feature][download][url] = "git@github.com:rafaqz/off_idea_feature"
projects[off_idea_feature][type] = "module"
;projects[off_idea_feature][version] = "1.0-alpha1"
projects[off_idea_feature][subdir] = "features"

projects[off_projects_feature][download][type] = "git"
projects[off_projects_feature][download][url] = "git@github.com:rafaqz/off_projects_feature"
projects[off_projects_feature][type] = "module"
projects[off_projects_feature][subdir] = "features"

; +++++ Themes +++++
projects[custom_theme][download][type] = "git"
projects[custom_theme][download][url] = "git@github.com:rafaqz/off_theme.git"
projects[custom_theme][type] = "theme"

