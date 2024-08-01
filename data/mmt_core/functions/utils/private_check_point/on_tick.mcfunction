
execute as @e[type=minecraft:marker, tag=cu_cp_ptr] at @s run function mmt_core:utils/private_check_point/check_player

schedule function mmt_core:utils/private_check_point/on_tick 1t replace
