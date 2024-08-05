
execute unless block ~ ~ ~ #mmt_core:all_air run return run function mmt_core:utils/sight_cast/private/touched
execute if score scast_present core_utils_scast >= scast_limit core_utils_scast run return run function mmt_core:utils/sight_cast/private/out_of_range
scoreboard players add scast_present core_utils_scast 1
tp @s ^ ^ ^0.5
execute at @s run function mmt_core:utils/sight_cast/private/ray_trace_iteration
