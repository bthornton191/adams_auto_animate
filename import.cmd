
! -------------------------
! Create the plugin library
! -------------------------
if condition=(DB_EXISTS(".adams_auto_animate"))
	library delete library_name = .adams_auto_animate
end
library create library_name = .adams_auto_animate

! ---------------
! Read the macros
! ---------------
macro read  &
   macro_name = .adams_auto_animate.adams_auto_animate  &
   file_name = "adams_auto_animate\adams_auto_animate.mac"  &
   user_entered_command = "auto_animate"  &
   wrap_in_undo = no  &
   create_panel = no

! ---------------------
! Create the load macro
! ---------------------
macro read &
   macro_name = .adams_auto_animate.load &
   user_entered_command = "mdi adams_auto_animate load" &
   file_name = "load.mac" &
   wrap_in_undo = no &
   create_panel = no
   
! -----------------------
! Create the unload macro
! ----------------------- 
macro read &
   macro_name = .adams_auto_animate.unload &
   user_entered_command = "mdi adams_auto_animate unload" &
   file_name = "unload.mac" &
   wrap_in_undo=no &
   create_panel=no