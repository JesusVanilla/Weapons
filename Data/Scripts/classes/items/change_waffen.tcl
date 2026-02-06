$start
$replace
	{Axt_1			axt_01}
	{Axt_2			axt_02}
	{Axt_3			axt_03}
	{Axt_4			axt_04}
$with
$end

$start
$replace
	{Schild_1		schild_01}
	{Schild_2		schild_02}
	{Schild_3		schild_03}
$with
$end

$start
$replace
	{Schwert_1		schwert_01}
$with
$end

$start
$replace
	{Schwert_3		schwert_03}
	{Schwert_4		schwert_04}
$with
$end

$start
$before

SetWeaponClasses {
$put

proc SetRecyclableWeaponClasses {objclasslist} {
	foreach objclass $objclasslist {
		set classname [lindex $objclass 0]
		set animlist [lindex $objclass 1]
		def_class $classname metal tool 0 {} "
			call scripts/misc/animclassinit.tcl
			set classanimlist \{$animlist\}
			set animname \[lindex \$classanimlist 0\]
			class_defaultanim \${animname}.standard
			class_physic 1
			class_viewinfog 1
			method is_weapon {} {}
			method destroy {} { del this }
			method recycle {user} { tasklist_add \$user \"recycle \[get_ref this\]\" }
			obj_init \"
				set_selectable 	this 1
				set_hoverable 	this 1
				set_storable 	this 1
			\"
		"
	}
}

SetRecyclableWeaponClasses {
	{Axt_1 			axt_01}
    {Axt_2 			axt_02}
    {Axt_3 			axt_03}
    {Axt_4 			axt_04}

	{Schild_1		schild_01}
	{Schild_2		schild_02}
	{Schild_3		schild_03}

	{Schwert_1		schwert_01}
	{Schwert_3		schwert_03}
	{Schwert_4		schwert_04}
}


$end


$start
$before

def_class Bombe fight tool 0 {} {
$put

def_class FireMine metal tool 0 {} {
	call scripts/misc/autodef.tcl
	class_defaultanim bombe.standard

	def_event evt_scan
	def_event evt_timer_delete

	obj_init {
		call scripts/misc/autodef.tcl
		set_anim this bombe.standard 0 2

		timer_event this evt_scan -repeat -1 -interval 0.5 -userid 0
	}

	method recycle {user} {
		tasklist_add $user "recycle [get_ref this]"
	}

	handle_event evt_scan {
		set target [call_method this find_target]
		if {$target} {
			call_method this activate $target
			timer_unset this 0
		}
	}

	handle_event evt_timer_delete {
		call_method this destroy
	}

	method find_target {} {
		return [obj_query this "-class \{Zwerg Wuker Schwefelwuker Troll Spinne Kristallbrut Lavabrut\} -owner enemy -boundingbox \{-2.5 -1.0 -5.0 2.5 5.0 5.0\} -limit 1"]
	}

	method activate {target} {
		call_method $target cause_damage -0.8

		if {[state_get $target] != "trapped"} {
			state_triggerfresh $target fight_dispatch
		}

		set pos [get_pos this]
		set target_pos [get_pos $target]
		set dir_raw [vector_sub $target_pos $pos]
		set dir_norm [vector_normalize $dir_raw]
		set dir [vector_add $dir_norm {0 -0.20 0}]

		create_particlesource 2 $pos {0 -0.01 0} 1 1
		create_particlesource 34 $pos [vector_mul $dir 0.4] 1 1
		create_particlesource 8 $target_pos [vector_mul $dir 0.1] 5 1

		set_hoverable this 0
		set_selectable this 0

		timer_event this evt_timer_delete -repeat 0 -attime [expr [gettime] + 1] -userid 1
	}

	method destroy {} {
		destruct this
		del this
	}
}


$end