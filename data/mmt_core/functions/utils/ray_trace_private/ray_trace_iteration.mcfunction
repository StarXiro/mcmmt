
execute unless block ~ ~ ~ #mmt_core:all_air run return run function mmt_core:utils/ray_trace_private/touched
execute if score rtrace_present core_utils_rtrace >= rtrace_limit core_utils_rtrace run return run function mmt_core:utils/ray_trace_private/out_of_range
scoreboard players add rtrace_present core_utils_rtrace 1
tp @s ^ ^ ^0.5
execute at @s run function mmt_core:utils/ray_trace_private/ray_trace_iteration
