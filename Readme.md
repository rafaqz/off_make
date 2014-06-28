#OFF deployment files

This repositiory contains files used in deployment of the open food foundation site.

* skip_tables.txt contains tables that are skipped during drush sql-sync, generally configuration tables that are built from code.
* sync_variables.txt contains variables that are not stored in code and must be synchronised separately from database synchronisation, asthe variables table is not copied accross.
* modules_enabled.txt contains the list of modules to enable to build the site, generally just featur modules that take care of their own dependencies.
* settings_php_extra.txt contains custom settings to be appended to the settings.php file.
* off.make is the stub make file that calls the main make file. Not as necessary as it was originally.
