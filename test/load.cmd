def com echo=on
library create library_name = .adams_auto_animate.test

for variable_name=.adams_auto_animate.test._tst_num start_value=1 end_value=10
	
	variable set variable_name=.adams_auto_animate.test._tst_nam string_value=(".adams_auto_animate.test.test_" // eval(rtoi(.adams_auto_animate.test._tst_num)))
	
	macro read  &
		macro_name = (eval(.adams_auto_animate.test._tst_nam))  &
		file_name = ("test/test_" // eval(RTOI(.adams_auto_animate.test._tst_num)) // ".mac")  &
		user_entered_command = ("adams_auto_animate_test_" // eval(RTOI(.adams_auto_animate.test._tst_num)))  &
		wrap_in_undo = no  &
		create_panel = no
end
   
variable delete variable_name=.adams_auto_animate.test._tst_nam
