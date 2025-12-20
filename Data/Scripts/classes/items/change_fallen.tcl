$if:SELF_DESTRUCTING_TRAPS

$start
$before
			} else {
				log "Trap : Target lost"
			}
$put
			add_attrib this atr_Hitpoints -0.2

$end

$if:SELF_DESTRUCTING_TRAPS

$start
$before
			} else {log "Trap : Target lost"}
$put
			add_attrib this atr_Hitpoints -0.1

$end