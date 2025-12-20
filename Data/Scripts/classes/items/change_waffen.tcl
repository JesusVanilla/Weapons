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