
schedule clear mmt_core:utils/check_point/private/on_tick
kill @e[type=minecraft:marker, tag=cu_cp_ptr]
scoreboard players set @a core_utils_check_point_id -1
