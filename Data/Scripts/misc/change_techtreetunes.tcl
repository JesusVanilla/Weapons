$start
$replace
	"Schild" {
		set tttmaterial_Schild				{Stein Eisen}
		set tttinvent_Schild				{}
		set tttgain_Schild					{{exp_Metall 0.01}}
		set tttinfluence_Schild				{{exp_Metall 0.2}}
	}
$with
	"Schild" {
		set tttmaterial_Schild				{Pilzstamm Stein Stein}
		set tttinvent_Schild				{{exp_Stein 0.05} {exp_Kampf 0.02}}
		set tttgain_Schild					{{exp_Stein 0.02}}
		set tttinfluence_Schild				{{exp_Stein 0.3}}
	}
$end

$start
$after
Grabstein Keule 
$put
Schild 
$end

$start
$before
	"Schmiede" {
$put
	"Axt_1" {
		set tttmaterial_Axt_1				{Pilzstamm Eisen Eisen}
		set tttinvent_Axt_1					{{exp_Metall 0.04} {exp_Kampf 0.08}}
		set tttgain_Axt_1					{{exp_Metall 0.01}}
		set tttinfluence_Axt_1				{{exp_Metall 0.2}}
	}
	"Schild_1" {
		set tttmaterial_Schild_1			{Pilzstamm Stein Eisen}
		set tttinvent_Schild_1				{{exp_Metall 0.02} {exp_Holz 0.06} {exp_Kampf 0.06}}
		set tttgain_Schild_1				{{exp_Holz 0.02} {exp_Metall 0.01}}
		set tttinfluence_Schild_1			{{exp_Holz 0.2} {exp_Metall 0.2}}
	}

$end

$start
$replace
		set tttitems_Schmiede				{Schild Streitaxt Taucherglocke Leiter_Metall Waffenschmiede Dampfhammer Dampfmaschine}
		set tttpreinv_Schmiede				{Schild}
$with
		set tttitems_Schmiede				{Axt_1 Schild_1 Streitaxt Taucherglocke Leiter_Metall Waffenschmiede Dampfhammer Dampfmaschine}
		set tttpreinv_Schmiede				{}
$end



$start
$before
	"Dampfhammer" {
$put
	"Schwert_1" {
		set tttmaterial_Schwert_1			{Pilzstamm Kohle Eisen Eisen}
		set tttinvent_Schwert_1				{{exp_Metall 0.08} {exp_Kampf 0.08}}
		set tttgain_Schwert_1				{{exp_Metall 0.04}}
		set tttinfluence_Schwert_1			{{exp_Metall 0.3}}
	}
	"Axt_2" {
		set tttmaterial_Axt_2				{Pilzstamm Kohle Eisen Eisen Eisen}
		set tttinvent_Axt_2					{{exp_Metall 0.10} {exp_Kampf 0.14}}
		set tttgain_Axt_2					{{exp_Metall 0.06}}
		set tttinfluence_Axt_2				{{exp_Metall 0.3}}
	}
	"Schild_2" {
		set tttmaterial_Schild_2			{Kohle Eisen Eisen}
		set tttinvent_Schild_2				{{exp_Metall 0.12} {exp_Kampf 0.08}}
		set tttgain_Schild_2				{{exp_Metall 0.05}}
		set tttinfluence_Schild_2			{{exp_Metall 0.3}}
	}

$end

$start
$after
set tttitems_Dampfhammer			{
$put
Schwert_1 Schild_2 Axt_2 
$end


$start
$before
	"Waffenschmiede" {
$put
	"Axt_3" {
		set tttmaterial_Axt_3				{Pilzstamm Kohle Eisen Eisen Kohle Eisen Eisen}
		set tttinvent_Axt_3					{{exp_Metall 0.20} {exp_Kampf 0.20}}
		set tttgain_Axt_3					{{exp_Metall 0.05}}
		set tttinfluence_Axt_3				{{exp_Metall 0.5}}
	}
	"Schwert_3" {
		set tttmaterial_Schwert_3			{Pilzstamm Kohle Eisen Eisen Kohle Eisen Eisen}
		set tttinvent_Schwert_3				{{exp_Metall 0.12} {exp_Kampf 0.18}}
		set tttgain_Schwert_3				{{exp_Metall 0.05}}
		set tttinfluence_Schwert_3			{{exp_Metall 0.5}}
	}
	"FireMine" {
		set tttmaterial_FireMine			{Kohle Kohle Eisen}
		set tttinvent_FireMine		 		{{exp_Metall 0.12} {exp_Kampf 0.06}}
		set tttgain_FireMine				{{exp_Metall 0.01} {exp_Energie 0.004}}
		set tttinfluence_FireMine		  	{{exp_Metall 0.2}}
	}

$end

$start
$replace
		set tttmaterial_Plattmachfalle		{Stein Stein Stein Stein Stein Pilzstamm}
		set tttinvent_Plattmachfalle		{{exp_Stein 0.089} {exp_Kampf 0.019}}
$with
		set tttmaterial_Plattmachfalle		{Stein Stein Golderz Stein Stein Pilzstamm}
		set tttinvent_Plattmachfalle		{{exp_Stein 0.12} {exp_Kampf 0.06}}
$end

$start
$replace
		set tttinvent_Waffenschmiede		{{exp_Metall 0.05} {exp_Kampf 0.1}}
$with
		set tttinvent_Waffenschmiede		{{exp_Metall 0.1} {exp_Kampf 0.1}}
$end

$start
$after
PfeilUndBogen Metallschild 
$put
Schwert_3 Axt_3 FireMine 
$end

$start
$before
	"Waffenfabrik" {
$put
	"Schwert_4" {
		set tttmaterial_Schwert_4			{Kohle Eisen Eisen Eisen Eisen Kohle Gold Gold}
		set tttinvent_Schwert_4				{{exp_Metall 0.5} {exp_Kampf 0.3}}
		set tttgain_Schwert_4				{{exp_Metall 0.1}}
		set tttinfluence_Schwert_4			{{exp_Metall 0.8}}
	}
	"Axt_4" {
		set tttmaterial_Axt_4				{Kohle Eisen Eisen Kohle Eisen Eisen Eisen Kohle Gold Gold Gold}
		set tttinvent_Axt_4					{{exp_Metall 0.6} {exp_Kampf 0.4}}
		set tttgain_Axt_4					{{exp_Metall 0.12}}
		set tttinfluence_Axt_4				{{exp_Metall 0.9}}
	}
	"Schild_3" {
		set tttmaterial_Schild_3			{Kohle Eisen Eisen Eisen Kristall Kristall}
		set tttinvent_Schild_3				{{exp_Metall 0.25} {exp_Kampf 0.20} {exp_Energie 0.05}}
		set tttgain_Schild_3				{{exp_Metall 0.06}}
		set tttinfluence_Schild_3			{{exp_Metall 0.6}}
	}

$end

$start
$before
Lichtschwert Kristallschild
$put
Schild_3 
$end

$start
$after
Lichtschwert Kristallschild
$put
 Schwert_4 Axt_4
$end

$start
$replace
		set tttpreinv_Waffenfabrik			{Buechse}
$with
		set tttpreinv_Waffenfabrik			{Schild_3}
$end

$start
$replace
	"Lichtschwert" {
		set tttmaterial_Lichtschwert		{Kristall Kristall Kristall Kristall Eisen}
		set tttinvent_Lichtschwert			{{exp_Energie 0.5} {exp_Kampf 0.4}}
		set tttgain_Lichtschwert			{{exp_Metall 0.02} {exp_Energie 0.02}}
		set tttinfluence_Lichtschwert		{{exp_Stein 0.1} {exp_Metall 0.2}}
	}
$with
	"Lichtschwert" {
		set tttmaterial_Lichtschwert		{Kristall Kristall Kristall Kristall Eisen}
		set tttinvent_Lichtschwert			{{exp_Energie 0.3} {exp_Kampf 0.3}}
		set tttgain_Lichtschwert			{{exp_Metall 0.02} {exp_Energie 0.02}}
		set tttinfluence_Lichtschwert		{{exp_Stein 0.1} {exp_Metall 0.2}}
	}
$end

$start
$replace
		set tttmaterial_Grosser_Heiltrank	{Raupe Raupe Raupe Bier Gold Gold}
$with
		set tttmaterial_Grosser_Heiltrank	{Raupe Raupe Raupe Bier Gold}
$end

$start
$replace
		set tttmaterial_Unverwundbarkeitstrank	{Kristall Kristall Eisen Eisen Gold Gold Gold Gold Hamster}
$with
		set tttmaterial_Unverwundbarkeitstrank	{Kristall Eisen Gold Hamster}
$end

$start
$replace
		set tttmaterial_Unsichtbarkeitstrank	{Hamster Kristall Kristall Kristall Gold Gold Gold Gold Gold}
$with
		set tttmaterial_Unsichtbarkeitstrank	{Hamster Kristall Kristall Gold}
$end