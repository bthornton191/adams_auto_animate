def com echo=on
if condition=(eval(db_exists("test_model_1") != 1))
	file command read file_name="test_model_1.cmd"
end
file command read file_name="import.cmd"
file command read file_name="test\load.cmd"
interface plot window close 
simulation single_run reset
simulation single_run set save_analyses=yes analysis_prefix="run"
simulation single_run set update=none
simulation single_run transient end_time=5 step_size=0.05
simulation single_run reset
simulation single_run transient end_time=5 step_size=0.05
simulation single_run reset
simulation single_run transient end_time=5 step_size=0.05
simulation single_run reset

! Run all the tests
! for variable_name=_tst_ object_names=(eval(db_children(.adams_auto_animate.test, "macro"))) echo_all_loops=yes
	! Run the test macro
	! variable set variable_name=_tmp_ integer_value=(eval(EXECUTE_VIEW_COMMAND(_tst_.user_command)))	
! end

! variable delete variable_name=_tmp_
