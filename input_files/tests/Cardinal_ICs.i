[GlobalParams]

 	vx = 0.0
	vy = 0.0
 	vz = 0.0
 
 	# Diameters are in um here. Kernels usually want units in m.
    diameters = '0.00178 0.00562 0.0178 0.0562 0.178 0.562 1.78 5.62 17.8 56.2'

[] #END GlobalParams

[Problem]

[] #END Problem

[Mesh]

    type = GeneratedMesh
    dim = 3
 	nx = 20
	ny = 20
	nz = 20
 	xmin = 0.0
 	xmax = 12000.0
 	ymin = 0.0
 	ymax = 12000.0
	zmin = 500.0
	zmax = 10000.0

[] # END Mesh

[Variables]
# Units: GGp/m^3 (Billion-Billion particles per cubic meter)
# NOTE: Must be cautious of the units you use for the variables. Bad unit basis can make convergence difficult.
    [./N0]
        order = FIRST
        family = MONOMIAL
    [../]
 
 	[./N1]
 		order = FIRST
 		family = MONOMIAL
 	[../]
 
 	[./N2]
 		order = FIRST
 		family = MONOMIAL
 	[../]
 
 	[./N3]
 		order = FIRST
 		family = MONOMIAL
 	[../]
 
 	[./N4]
 		order = FIRST
 		family = MONOMIAL
    [../]
 
 	[./N5]
 		order = FIRST
 		family = MONOMIAL
 	[../]
 
 	[./N6]
 		order = FIRST
 		family = MONOMIAL
 	[../]
 
 	[./N7]
 		order = FIRST
 		family = MONOMIAL
 	[../]
 
 	[./N8]
 		order = FIRST
 		family = MONOMIAL
 	[../]
 
 	[./N9]
 		order = FIRST
 		family = MONOMIAL
 	[../]


[] #END Variables

[AuxVariables]
 
	[./V_total]
		order = FIRST
		family = MONOMIAL
	[../]
 
 	[./N_total]
 		order = FIRST
 		family = MONOMIAL
	[../]
 
	[./N_avg]
 		order = FIRST
 		family = MONOMIAL
	[../]
 
 	[./air_dens]
 		order = FIRST
 		family = MONOMIAL
 		initial_condition = 1.225 #kg/m^3
	[../]
 
 	[./air_ions]
 		order = FIRST
 		family = MONOMIAL
	[../]

[] #END AuxVariables

[ICs]

	[./N0_IC]
 		type = CARDINAL_CloudIC
        variable = N0
        x_center = 6000
        y_center = 6000
        local_size_index = 0
        cardinal_object = cardinal
    [../]
 
 	[./N1_IC]
 		type = CARDINAL_CloudIC
 		variable = N1
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 1
 		cardinal_object = cardinal
 	[../]
 
 	[./N2_IC]
 		type = CARDINAL_CloudIC
 		variable = N2
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 2
 		cardinal_object = cardinal
 	[../]
 
 	[./N3_IC]
 		type = CARDINAL_CloudIC
 		variable = N3
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 3
 		cardinal_object = cardinal
 	[../]
 
 	[./N4_IC]
 		type = CARDINAL_CloudIC
 		variable = N4
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 4
 		cardinal_object = cardinal
 	[../]
 
 	[./N5_IC]
 		type = CARDINAL_CloudIC
 		variable = N5
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 5
 		cardinal_object = cardinal
 	[../]
 
 	[./N6_IC]
 		type = CARDINAL_CloudIC
 		variable = N6
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 6
 		cardinal_object = cardinal
 	[../]
 
 	[./N7_IC]
 		type = CARDINAL_CloudIC
 		variable = N7
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 7
 		cardinal_object = cardinal
 	[../]
 
 	[./N8_IC]
 		type = CARDINAL_CloudIC
 		variable = N8
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 8
 		cardinal_object = cardinal
 	[../]
 
 	[./N9_IC]
 		type = CARDINAL_CloudIC
 		variable = N9
 		x_center = 6000
 		y_center = 6000
 		local_size_index = 9
 		cardinal_object = cardinal
 	[../]

[] #END ICs

[Kernels]

    [./N0_dot]
        type = CoefTimeDerivative
        variable = N0
        Coefficient = 1.0
    [../]

    [./N0_MPB]
        type = ConstMonoPB
        variable = N0
        main_variable = N0
        coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
    [../]
 
 	[./N1_dot]
 		type = CoefTimeDerivative
 		variable = N1
 		Coefficient = 1.0
 	[../]
 
 	[./N1_MPB]
 		type = ConstMonoPB
 		variable = N1
        main_variable = N1
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 	[../]
 
 	[./N2_dot]
 		type = CoefTimeDerivative
 		variable = N2
 		Coefficient = 1.0
 	[../]
 
 	[./N2_MPB]
 		type = ConstMonoPB
 		variable = N2
 		main_variable = N2
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
    [../]
 
 	[./N3_dot]
 		type = CoefTimeDerivative
 		variable = N3
 		Coefficient = 1.0
 	[../]
 
 	[./N3_MPB]
 		type = ConstMonoPB
 		variable = N3
 		main_variable = N3
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 	[../]
 
 	[./N4_dot]
 		type = CoefTimeDerivative
 		variable = N4
 		Coefficient = 1.0
 	[../]
 
    [./N4_MPB]
 		type = ConstMonoPB
 		variable = N4
 		main_variable = N4
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 	[../]
 
 	[./N5_dot]
 		type = CoefTimeDerivative
 		variable = N5
 		Coefficient = 1.0
	 [../]
 
 	[./N5_MPB]
 		type = ConstMonoPB
 		variable = N5
 		main_variable = N5
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 	[../]
 
 	[./N6_dot]
 		type = CoefTimeDerivative
 		variable = N6
 		Coefficient = 1.0
 	[../]
 
    [./N6_MPB]
 		type = ConstMonoPB
 		variable = N6
 		main_variable = N6
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 	[../]
 
 	[./N7_dot]
 		type = CoefTimeDerivative
 		variable = N7
 		Coefficient = 1.0
 	[../]
 
 	[./N7_MPB]
 		type = ConstMonoPB
 		variable = N7
 		main_variable = N7
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 	[../]
 
 	[./N8_dot]
 		type = CoefTimeDerivative
 		variable = N8
 		Coefficient = 1.0
 	[../]
 
 	[./N8_MPB]
 		type = ConstMonoPB
 		variable = N8
 		main_variable = N8
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 	[../]
 
 	[./N9_dot]
 		type = CoefTimeDerivative
 		variable = N9
 		Coefficient = 1.0
 	[../]
 
 	[./N9_MPB]
 		type = ConstMonoPB
 		variable = N9
 		main_variable = N9
 		coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 	[../]

[] #END Kernels

[DGKernels]

[] #END DGKernels

[AuxKernels]

	[./Total_Volume]
		type = VolumeBalanceCheck
		variable = V_total
		coupled_vars = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
        diameters = '0.00178 0.00562 0.0178 0.0562 0.178 0.562 1.78 5.62 17.8 56.2'
        execute_on = 'initial timestep_end'
	[../]
 
	[./N_average]
 		type = AverageMaterial
 		variable = N_avg
		coupled_vars = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
 		execute_on = 'initial timestep_begin timestep_end'
	[../]
 
    [./ionization]
 		type = TotalAirIonization
        variable = air_ions
        coupled_list = 'N0 N1 N2 N3 N4 N5 N6 N7 N8 N9'
        air_density = air_dens
        cardinal_object = cardinal
        background_ionization = 0.0
        execute_on = 'initial timestep_end'
    [../]

[] #END AuxKernels

[BCs]

 	[./N0_Flux]
 		type = DGFluxBC
 		variable = N0
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N1_Flux]
 		type = DGFluxBC
 		variable = N1
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N2_Flux]
 		type = DGFluxBC
 		variable = N2
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N3_Flux]
 		type = DGFluxBC
 		variable = N3
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N4_Flux]
 		type = DGFluxBC
 		variable = N4
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N5_Flux]
 		type = DGFluxBC
 		variable = N5
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N6_Flux]
 		type = DGFluxBC
 		variable = N6
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N7_Flux]
 		type = DGFluxBC
 		variable = N7
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N8_Flux]
 		type = DGFluxBC
 		variable = N8
 		boundary = 'left right'
 		u_input = 0.0
 	[../]
 
 	[./N9_Flux]
 		type = DGFluxBC
 		variable = N9
 		boundary = 'left right'
 		u_input = 0.0
 	[../]

[] #END BCs

[Materials]


[] #END Materials

 
[UserObjects]
 
	[./cardinal]
 		type = CARDINAL_Object
 		execute_on = 'initial timestep_end'
 		input_file = 'input_files/cardinal/1979-Test-Case.txt'
 		atm_file = 'input_files/cardinal/DefaultAtmosphere.txt'
 		data_path = 'database/'
        mono_variate_population = true
 	[../]
 
 [] #END UserObjects

[Postprocessors]

#May consider custom versions of these postprocessors to correct for negative mass ocsillations...
	[./N0]
		type = ElementAverageValue
		variable = N0
		execute_on = 'initial timestep_end'
	[../]
 
	[./N1]
		type = ElementAverageValue
		variable = N1
		execute_on = 'initial timestep_end'
	[../]
 
 	[./N2]
 		type = ElementAverageValue
 		variable = N2
		 execute_on = 'initial timestep_end'
	[../]
 
 	[./N3]
 		type = ElementAverageValue
 		variable = N3
 		execute_on = 'initial timestep_end'
	[../]
 
 	[./N4]
 		type = ElementAverageValue
 		variable = N4
 		execute_on = 'initial timestep_end'
	[../]
 
 	[./N5]
 		type = ElementAverageValue
 		variable = N5
 		execute_on = 'initial timestep_end'
	[../]
 
 	[./N6]
 		type = ElementAverageValue
 		variable = N6
 		execute_on = 'initial timestep_end'
	[../]
 
 	[./N7]
 		type = ElementAverageValue
 		variable = N7
 		execute_on = 'initial timestep_end'
	[../]
 
 	[./N8]
 		type = ElementAverageValue
 		variable = N8
 		execute_on = 'initial timestep_end'
	[../]
 
 	[./N9]
 		type = ElementAverageValue
 		variable = N9
 		execute_on = 'initial timestep_end'
	[../]
 
	[./V_total]
		type = ElementAverageValue
		variable = V_total
		execute_on = 'initial timestep_end'
	[../]
 
 	[./total_ionization]
 		type = ElementAverageValue
 		variable = air_ions
 		execute_on = 'initial timestep_end'
	[../]

[] #END Postprocessors

[Executioner]

    type = Transient
	scheme = bdf2

    # NOTE: The default tolerances are far to strict and cause the program to crawl
    nl_rel_tol = 1e-10
    nl_abs_tol = 1e-8
    nl_rel_step_tol = 1e-10
    nl_abs_step_tol = 1e-10
    l_tol = 1e-10
    l_max_its = 200
    nl_max_its = 20

    solve_type = pjfnk
    line_search = bt    # Options: default shell none basic l2 bt cp
    start_time = 0.0
	end_time = 5.0
    dtmax = 0.5
    petsc_options_iname = '-pc_type -pc_hypre_type -ksp_gmres_restart'
    petsc_options_value = 'hypre boomeramg 100'

    [./TimeStepper]
		type = SolutionTimeAdaptiveDT
#		type = ConstantDT
        dt = 0.05
    [../]

[] #END Executioner

[Preconditioning]
 
	[./smp]
		type = SMP
		full = true
		petsc_options = '-snes_converged_reason'
		petsc_options_iname ='-pc_type -sub_pc_type -pc_hypre_type -pc_hypre_boomeramg_strong_threshold -ksp_gmres_restart -snes_max_funcs'
		petsc_options_value = 'hypre bjacobi boomeramg 0.7 2000 20000'
	[../]

[] #END Preconditioning
 
[Adaptivity]

[] #END Adaptivity

[Outputs]

    exodus = true
    csv = true
    print_linear_residuals = true

[] #END Outputs
