
execute as @e[type=minecraft:marker, tag=cu_cp_ptr] at @s run function mmt_core:utils/check_point/private/check_player

schedule function mmt_core:utils/check_point/private/on_tick 1t replace
