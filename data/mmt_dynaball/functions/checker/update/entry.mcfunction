$data modify storage mcmmt:dynaball macro_bag.update_checker.id set value $(game_id)
# update
scoreboard players set direction core_utils_pillar_check 1
scoreboard players set max_steps core_utils_pillar_check 40
$execute as @e[type=minecraft:marker, tag=dnb_checker_$(slot_id)] at @s if function mmt_core:utils/pillar_check/pred run kill @s
# sum up a
scoreboard players set temp3 dnb_system 0
$execute as @e[type=minecraft:marker, tag=dnb_checker_$(slot_id), tag=dnb_checker_a] run scoreboard players add temp3 dnb_system 1
scoreboard players operation temp3 dnb_system *= 100 dnb_system
execute store result score temp4 dnb_system run data get storage mcmmt:dynaball save_load.checker.a_tot 1.0
scoreboard players operation temp3 dnb_system /= temp4 dnb_system
execute store result storage mcmmt:dynaball macro_bag.update_checker.ap int 1.0 run scoreboard players get temp3 dnb_system
# sum up b
scoreboard players set temp3 dnb_system 0
$execute as @e[type=minecraft:marker, tag=dnb_checker_$(slot_id), tag=dnb_checker_b] run scoreboard players add temp3 dnb_system 1
scoreboard players operation temp3 dnb_system *= 100 dnb_system
execute store result score temp4 dnb_system run data get storage mcmmt:dynaball save_load.checker.b_tot 1.0
scoreboard players operation temp3 dnb_system /= temp4 dnb_system
execute store result storage mcmmt:dynaball macro_bag.update_checker.bp int 1.0 run scoreboard players get temp3 dnb_system
# perform update
function mmt_dynaball:checker/update/perform_update with storage mcmmt:dynaball macro_bag.update_checker
