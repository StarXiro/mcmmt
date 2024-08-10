
execute as @a[tag=mmt_cp_user, tag=!cu_cp_in, tag=!cu_cp_out] run tag @s add cu_cp_out

execute as @a[tag=mmt_cp_user, tag=cu_cp_in] at @s run function mmt_core:utils/check_point/private/relief_player

execute as @e[type=minecraft:marker, tag=cu_cp_ptr] at @s run function mmt_core:utils/check_point/private/check_player

schedule function mmt_core:utils/check_point/private/on_tick 1t replace
