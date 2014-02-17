

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
projects[bugherd][subdir] = "contrib"
projects[bugherd][version] = "1.0-beta4"
