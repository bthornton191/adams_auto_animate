file command read file_name = "import.cmd"

! ------------------
! Write the bin file
! ------------------
lis ent ent=.adams_auto_animate
fil bin write file="win64\adams_auto_animate.bin" ent=.adams_auto_animate

var set var=imv93 &
   string="> NOTE: --------------------------------------", &
          "> Library image file adams_auto_animate.bin written.", &
          "> You must move this to the win64 directory if ", &
          "> you want the plugin to be available.", &
          "> --------------------------------------------"

lis var var=imv93
var del var=imv93