!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = inch  &
   angle = deg  &
   force = pound_force  &
   mass = pound_mass  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 1.0  &
   spacing_for_grid = 39.3700787402
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = test_model_1
!
model attributes  &
   model_name = .test_model_1  &
   size_of_icons = 1.0
!
view erase
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .test_model_1.steel  &
   adams_id = 1  &
   density = 0.2818290049  &
   youngs_modulus = 3.002281171E+07  &
   poissons_ratio = 0.29
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .test_model_1.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_model_1.ground.MARKER_5  &
   adams_id = 5  &
   location = -7.874015748, 0.7874015748, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.ground.MARKER_5  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.ground.MARKER_7  &
   adams_id = 7  &
   location = 5.905511811, 7.4803149606, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.ground.MARKER_7  &
   size_of_icons = 1.0
!
part attributes  &
   part_name = .test_model_1.ground  &
   size_of_icons = 1.0
!
!----------------------------------- PART_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_model_1.PART_2  &
   adams_id = 2  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_model_1.PART_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_model_1.PART_2.MARKER_1  &
   adams_id = 1  &
   location = -7.874015748, 0.7874015748, 0.0  &
   orientation = 30.9637565321d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_2.MARKER_1  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_2.cm  &
   adams_id = 12  &
   location = -6.1023622047, -2.1653543307, 0.0  &
   orientation = 30.9637565321d, 90.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_2.cm  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_2.MARKER_4  &
   adams_id = 4  &
   location = -7.874015748, 0.7874015748, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_2.MARKER_4  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_2.MARKER_9  &
   adams_id = 9  &
   location = -4.3307086614, -5.1181102362, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_2.MARKER_9  &
   size_of_icons = 1.0
!
part create rigid_body mass_properties  &
   part_name = .test_model_1.PART_2  &
   material_type = .test_model_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_model_1.PART_2.CYLINDER_1  &
   adams_id = 1  &
   center_marker = .test_model_1.PART_2.MARKER_1  &
   angle_extent = 360.0  &
   length = 6.8869510569  &
   radius = 0.8608688821  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .test_model_1.PART_2  &
   color = RED  &
   name_visibility = off  &
   size_of_icons = 1.0
!
!----------------------------------- PART_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_model_1.PART_3  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_model_1.PART_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_model_1.PART_3.MARKER_2  &
   adams_id = 2  &
   location = -4.3307086614, -5.1181102362, 0.0  &
   orientation = 121.3286928679d, 90.0d, 180.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_3.MARKER_2  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_3.cm  &
   adams_id = 13  &
   location = 0.1968503937, -2.3622047244, 0.0  &
   orientation = 301.3286928679d, 90.0d, 90.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_3.cm  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_3.MARKER_6  &
   adams_id = 6  &
   location = 4.7244094488, 0.3937007874, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_3.MARKER_6  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_3.MARKER_8  &
   adams_id = 8  &
   location = -4.3307086614, -5.1181102362, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_3.MARKER_8  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_3.MARKER_11  &
   adams_id = 11  &
   location = 0.1968503937, -2.3622047244, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .test_model_1.PART_3  &
   material_type = .test_model_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .test_model_1.PART_3.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .test_model_1.PART_3.MARKER_2  &
   angle_extent = 360.0  &
   length = 10.6007181243  &
   radius = 1.3250897655  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .test_model_1.PART_3  &
   color = GREEN  &
   name_visibility = off  &
   size_of_icons = 1.0
!
!----------------------------------- PART_4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_model_1.ground
!
part create rigid_body name_and_position  &
   part_name = .test_model_1.PART_4  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .test_model_1.PART_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .test_model_1.PART_4.MARKER_3  &
   adams_id = 3  &
   location = 3.1496062992, -6.6929133858, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_4.MARKER_3  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_4.cm  &
   adams_id = 14  &
   location = 3.1496062992, -6.6929133858, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .test_model_1.PART_4.cm  &
   size_of_icons = 1.0
!
marker create  &
   marker_name = .test_model_1.PART_4.MARKER_10  &
   adams_id = 10  &
   location = 3.1496062992, -6.6929133858, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .test_model_1.PART_4  &
   material_type = .test_model_1.steel
!
! ****** Graphics for current part ******
!
geometry create shape ellipsoid  &
   ellipsoid_name = .test_model_1.PART_4.ELLIPSOID_3  &
   adams_id = 7  &
   center_marker = .test_model_1.PART_4.MARKER_3  &
   x_scale_factor = 3.3406619584  &
   y_scale_factor = 3.3406619584  &
   z_scale_factor = 3.3406619584
!
part attributes  &
   part_name = .test_model_1.PART_4  &
   color = MAIZE  &
   name_visibility = off  &
   size_of_icons = 1.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .test_model_1.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .test_model_1.PART_2.MARKER_4  &
   j_marker_name = .test_model_1.ground.MARKER_5
!
constraint attributes  &
   constraint_name = .test_model_1.JOINT_1  &
   name_visibility = off  &
   size_of_icons = 1.0
!
constraint create joint spherical  &
   joint_name = .test_model_1.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .test_model_1.PART_3.MARKER_8  &
   j_marker_name = .test_model_1.PART_2.MARKER_9
!
constraint attributes  &
   constraint_name = .test_model_1.JOINT_2  &
   name_visibility = off  &
   size_of_icons = 1.0
!
!----------------------------------- Forces -----------------------------------!
!
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .test_model_1.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=5.0 step_size=1.0E-02 model_name=.MODEL_1"
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .test_model_1.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .test_model_1.SPRING_1  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .test_model_1.SPRING_1  &
   color = RED
!
ude create instance  &
   instance_name = .test_model_1.SPRING_2  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .test_model_1.SPRING_2  &
   color = RED
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.i_marker  &
   object_value = (.test_model_1.PART_3.MARKER_6)
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.j_marker  &
   object_value = (.test_model_1.ground.MARKER_7)
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.stiffness_coefficient  &
   real_value = 10.0
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.damping_coefficient  &
   real_value = 0.1
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .test_model_1.SPRING_1.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .test_model_1.SPRING_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.i_marker  &
   object_value = (.test_model_1.PART_4.MARKER_10)
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.j_marker  &
   object_value = (.test_model_1.PART_3.MARKER_11)
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.stiffness_coefficient  &
   real_value = 5.0
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.damping_coefficient  &
   real_value = 5.0E-02
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .test_model_1.SPRING_2.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .test_model_1.SPRING_2
!
undo end_block
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = ACCGRAV_1  &
   x_component_gravity = 0.0  &
   y_component_gravity = -386.0885826772  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
!---------------------------- Function definitions ----------------------------!
!
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .test_model_1.SPRING_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .test_model_1.SPRING_2
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape cylinder  &
   cylinder_name = .test_model_1.PART_2.CYLINDER_1  &
   length = (6.8869510569inch)  &
   radius = (0.8608688821inch)
!
geometry modify shape cylinder  &
   cylinder_name = .test_model_1.PART_3.CYLINDER_2  &
   length = (10.6007181243inch)  &
   radius = (1.3250897655inch)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .test_model_1.PART_4.ELLIPSOID_3  &
   x_scale_factor = (2 * 1.6703309792inch)  &
   y_scale_factor = (2 * 1.6703309792inch)  &
   z_scale_factor = (2 * 1.6703309792inch)
!
material modify  &
   material_name = .test_model_1.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
model display  &
   model_name = test_model_1
