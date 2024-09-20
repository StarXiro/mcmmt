execute unless data storage mcmmt:dynaball save_load.running run return fail
scoreboard players set temp3 dnb_system 0
$scoreboard players set temp4 dnb_system $(player_a_died)
$scoreboard players set temp2 dnb_system $(player_a_tot)
execute if score temp4 dnb_system = temp2 dnb_system run scoreboard players add temp3 dnb_system 1
$scoreboard players set temp4 dnb_system $(player_b_died)
$scoreboard players set temp2 dnb_system $(player_b_tot)
execute if score temp4 dnb_system = temp2 dnb_system run scoreboard players add temp3 dnb_system 2
function mmt_dynaball:game_end/end_slot/switch_case