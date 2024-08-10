
schedule clear mmt_core:utils/check_point/private/on_tick
kill @e[type=minecraft:marker, tag=cu_cp_ptr]
execute as @a[tag=mmt_cp_user] run tag @s remove cu_cp_in
execute as @a[tag=mmt_cp_user] run tag @s remove cu_cp_out
execute as @a[tag=mmt_cp_user] run tag @s remove mmt_cp_user
scoreboard players set @a core_utils_check_point_id -1
