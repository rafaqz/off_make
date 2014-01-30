

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
projects[drupal][version] = "7.24"

; +++++ Profiles +++++

; This installs the base collabco site. which dosnt do very much on its own...
projects[collabco][download][type] = "git"
projects[collabco][download][url] = "git@github.com:rafaqz/off_install_profile.git"
projects[collabco][type] = "profile"

; +++++ Modules +++++
;

; +++++ Features +++++
projects[collabco_conversation_feature][download][type] = "git"
projects[collabco_conversation_feature][download][url] = "git@github.com:rafaqz/collabco_conversation_feature"
projects[collabco_conversation_feature][download][branch] = "off"
projects[collabco_conversation_feature][type] = "module"
;projects[collabco_conversation_feature][version] = "1.0-alpha1"
projects[collabco_conversation_feature][subdir] = "features"

projects[collabco_event_feature][download][type] = "git"
projects[collabco_event_feature][download][url] = "git@github.com:rafaqz/collabco_event_feature"
projects[collabco_event_feature][type] = "module"
;projects[collabco_event_feature][version] = "1.0-alpha1"
projects[collabco_event_feature][subdir] = "features"

projects[collabco_knowledge_feature][download][type] = "git"
projects[collabco_knowledge_feature][download][url] = "git@github.com:rafaqz/collabco_knowledge_feature"
projects[collabco_knowledge_feature][type] = "module"
;projects[collabco_knowledge_feature][version] = "1.0-alpha1"
projects[collabco_knowledge_feature][subdir] = "features"

projects[collabco_profile_feature][download][type] = "git"
projects[collabco_profile_feature][download][url] = "git@github.com:rafaqz/collabco_profile_feature"
projects[collabco_profile_feature][download][branch] = "off"
projects[collabco_profile_feature][type] = "module"
projects[collabco_profile_feature][subdir] = "features"

;projects[collabco_slideshow_feature][download][type] = "git"
;projects[collabco_slideshow_feature][download][url] = "git@github.com:rafaqz/collabco_slideshow_feature.git"
;projects[collabco_slideshow_feature][type] = "module"
;projects[collabco_slideshow_feature][subdir] = "features"

projects[collabco_message_feature][download][type] = "git"
projects[collabco_message_feature][download][url] = "git@github.com:rafaqz/collabco_message_feature.git"
projects[collabco_message_feature][download][branch] = "off"
projects[collabco_message_feature][type] = "module"
projects[collabco_message_feature][subdir] = "features"

projects[collabco_organisation_feature][download][type] = "git"
projects[collabco_organisation_feature][download][url] = "git@github.com:rafaqz/collabco_organisation_feature"
projects[collabco_organisation_feature][type] = "module"
projects[collabco_organisation_feature][download][branch] = "off"
;projects[collabco_organisation_feature][version] = "1.0-alpha1"
projects[collabco_organisation_feature][subdir] = "features"

projects[collabco_login_feature][download][type] = "git"
projects[collabco_login_feature][download][url] = "git@github.com:rafaqz/collabco_login_feature.git"
projects[collabco_login_feature][type] = "module"
projects[collabco_login_feature][subdir] = "features"

projects[collabco_mail_feature][download][type] = "git"
projects[collabco_mail_feature][download][url] = "git@github.com:rafaqz/collabco_mail_feature"
projects[collabco_mail_feature][type] = "module"
projects[collabco_mail_feature][download][branch] = "off"
;projects[collabco_mail_feature][version] = "1.0-alpha1"
projects[collabco_mail_feature][subdir] = "features"

;projects[collabco_search_feature][download][type] = "git"
;projects[collabco_search_feature][download][url] = "git@github.com:rafaqz/collabco_search_feature"
;projects[collabco_search_feature][type] = "module"
;;projects[collabco_search_feature][version] = "1.0-alpha1"
;projects[collabco_search_feature][subdir] = "features"

;projects[collabco_user_stats_feature][download][type] = "git"
;projects[collabco_user_stats_feature][download][url] = "git@github.com:rafaqz/collabco_user_stats_feature"
;projects[collabco_user_stats_feature][type] = "module"
;;projects[collabco_user_stats_feature][version] = "1.0-alpha1"
;projects[collabco_user_stats_feature][subdir] = "features"

projects[off_blog_feature][download][type] = "git"
projects[off_blog_feature][download][url] = "git@github.com:rafaqz/off_blog_feature"
projects[off_blog_feature][type] = "module"
projects[off_blog_feature][subdir] = "features"

projects[off_mail_reply_feature][download][type] = "git"
projects[off_mail_reply_feature][download][url] = "git@github.com:rafaqz/off_mail_reply_feature"
projects[off_mail_reply_feature][type] = "module"
projects[off_mail_reply_feature][subdir] = "features"

projects[off_membership_form_feature][download][type] = "git"
projects[off_membership_form_feature][download][url] = "git@github.com:rafaqz/off_membership_form_feature"
projects[off_membership_form_feature][type] = "module"
projects[off_membership_form_feature][subdir] = "features"

projects[off_idea_feature][download][type] = "git"
projects[off_idea_feature][download][url] = "git@github.com:rafaqz/off_idea_feature"
projects[off_idea_feature][type] = "module"
projects[off_idea_feature][subdir] = "features"

projects[off_projects_feature][download][type] = "git"
projects[off_projects_feature][download][url] = "git@github.com:rafaqz/off_projects_feature"
projects[off_projects_feature][type] = "module"
projects[off_projects_feature][subdir] = "features"

projects[off_wiki_feature][download][type] = "git"
projects[off_wiki_feature][download][url] = "git@github.com:rafaqz/off_wiki_feature"
projects[off_wiki_feature][type] = "module"
projects[off_wiki_feature][subdir] = "features"

projects[off_categories_feature][download][type] = "git"
projects[off_categories_feature][download][url] = "git@github.com:rafaqz/off_categories_feature"
projects[off_categories_feature][type] = "module"
projects[off_categories_feature][subdir] = "features"

projects[off_pages_feature][download][type] = "git"
projects[off_pages_feature][download][url] = "git@github.com:rafaqz/off_pages_feature"
projects[off_pages_feature][type] = "module"
projects[off_pages_feature][subdir] = "features"

projects[off_share_feature][download][type] = "git"
projects[off_share_feature][download][url] = "git@github.com:rafaqz/off_share_feature"
projects[off_share_feature][type] = "module"
projects[off_share_feature][subdir] = "features"

projects[off_featured_feature][download][type] = "git"
projects[off_featured_feature][download][url] = "git@github.com:rafaqz/off_featured_feature"
projects[off_featured_feature][type] = "module"
projects[off_featured_feature][subdir] = "features"

; +++++ Themes +++++
projects[zurb-foundation][version]= "4.0-beta2"
projects[zurb-foundation][type] = "theme"

projects[custom_zurb][download][type] = "git"
projects[custom_zurb][download][url] = "git@github.com:rafaqz/custom_zurb.git"
projects[custom_zurb][type] = "theme"

projects[views_foundation][subdir] = "contrib"
projects[views_foundation][version] = "4.x-dev"
projects[views_foundation][patch][] = "https://drupal.org/files/issues/views_foundation-sections-4.patch"

projects[bugherd][subdir] = "contrib"
projects[bugherd][version] = "1.0-beta4"
