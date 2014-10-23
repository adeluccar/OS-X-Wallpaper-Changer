OS-X-Wallpaper-Changer
======================

Applescript for changing the Mac OS X desktop picture based on the time of day

- Philip Hutchison, April 2013
- http://pipwerks.com
- MIT license http://pipwerks.mit-license.org/
- Forked and customized by Alberto De Lucca, October 2014

##What it does
This is an AppleScript that changes your Mac's desktop picture based on the time of day.  The day is split into eleven 'periods':

- Breakfast     (06:01 am - 07:00 am)
- Learn         (07:01 am - 08:00 am)
- Work          (08:01 am - 11:00 am)
- Learn         (11:01 am - 12:00 am)
- Lunch         (12:01 pm - 01:00 pm)
- Work          (01:01 pm - 16:00 pm)
- Keep in Touch (04:01 pm - 06:00 pm)
- Dinner        (06:01 pm - 07:00 pm)
- Keep in Touch (07:01 pm - 08:00 pm)
- No Screens    (08:01 pm - 09:01 pm)
- Sleep         (09:00 pm - 06:00 am)

Each period has a corresponding folder, which is meant to store images that evoke the period in question. For example, you could have a picture of a classroom in the "Learn" folder, or a picture of a bed in the "Sleep" folder.

    /Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Learn/classroom.jpg
    /Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Sleep/bed.jpg

**The script will randomly select an image from the corresponding folder.** The image can be in any supported file type, including JPG, GIF and PNG images.

##How to use it

###Folder structure
If you choose to use the default settings, all you need to do is create folders in your `Pictures` folder that correspond to the following sample paths:

- `~/Pictures/Wallpapers/Time of Day/Breakfast/`
- `~/Pictures/Wallpapers/Time of Day/Learn/`
- `~/Pictures/Wallpapers/Time of Day/Work/`
- `~/Pictures/Wallpapers/Time of Day/Lunch/`
- `~/Pictures/Wallpapers/Time of Day/Keep in Touch/`
- `~/Pictures/Wallpapers/Time of Day/Dinner/`
- `~/Pictures/Wallpapers/Time of Day/No Screens/`
- `~/Pictures/Wallpapers/Time of Day/Go to Sleep/`

###Preferences
Make sure that Apple > Desktop Pictures is checked in the Desktop & Screen Saver > Desktop preferences. The script will not work with Solid Colors, the iPhoto library or Folders preference.

###Images
You must supply your own images. 
 
###Script file
This script file itself can be located anywhere.

The script must be run at specified intervals using automation of some kind.
I use [Lingon X](https://www.peterborgapps.com/lingon/) to run the script on 30 minute intervals. 

##Customization
This script can be freely customized. It is heavily commented to make it easy to understand. For example, you can easily change the specified times of day or folder names by editing the script. You can simplify to something such as "day" and "night", or get even more granular and specify a custom folder for each hour of the day.

###Multiple monitors
The script includes support for multiple monitors. By default, it will display the same image on all monitors. If you prefer to set a unique image on each monitor, set the `useSamePictureAcrossDisplays` variable to `false`. 
