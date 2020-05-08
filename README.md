# Adams Auto Animate (an MSC/Adams plugin)

Adams Auto Animate allows you to automate generation of animations in Adams View

## Installing on Windows

Download **adams_auto_animate.bin** and **adams_auto_animate_plg.xml** from the **win64** directory and place them in your Adams installation at **$topdir\win64**.  Open Adams View and navigate to *Tools>Plugin Manager*.  Check the *Load* box in the *Adams Auto Animate* row.  

> **NOTE:** You can ignore the message about versions as long as you meet the compatibility criteria below.

### User Plugin Directory

As an alternative to placing the plugin files in **$topdir\win64** you can create a user plugins directory and set the environment variable **MDI_USER_PLUGIN_DIR** to that path.


## Installing on Linux

This plugin is not currently supported on linux.

## Compatibility

The **adams_auto_animate.bin** file included in this repository was created for Adams\View **2019.2**, but it will work with all versions of Adams **after 2019.2**.  It is not compatible with prior versions.  If needed, you can run **build_bin.cmd** in your version of Adams\View to generate a version specific **adams_auto_animate.bin** file.

## Usage

1. Ensure that you have analysis results loaded into the database.
2. Navigate to *Tools>Auto Animate*.
3. Fill out the dialog box.
4. Click *OK*.

## Modifying

Once the codebase has been modified, run build_bin.cmd in adams view.  This will update adams_auto_animate_plugin.bin.  Make sure you set this repository as your working direcory in Adams/View.
