execute unless data storage mcmmt:dynaball save_load.running run return fail
scoreboard players set temp3 dnb_system 0
scoreboard players set temp4 dnb_system 0
$execute as @a[tag=dnb_player, tag=$(slot_tag), tag=team_a] run scoreboard players add temp4 dnb_system 1
execute if score temp4 dnb_system matches 0 run scoreboard players add temp3 dnb_system 1
scoreboard players set temp4 dnb_system 0
$execute as @a[tag=dnb_player, tag=$(slot_tag), tag=team_b] run scoreboard players add temp4 dnb_system 1
execute if score temp4 dnb_system matches 0 run scoreboard players add temp3 dnb_system 2
function mmt_dynaball:game_end/end_slot/switch_case