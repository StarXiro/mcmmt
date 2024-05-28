
scoreboard players set rtrace_success core_utils_rtrace 1
data modify storage mcmmt:core_utils ray_trace.success set value 1b
execute store result storage mcmmt:core_utils ray_trace.iter_cnt int 1.0 run scoreboard players get rtrace_present core_utils_rtrace
scoreboard players operation rtrace_last_iter core_utils_rtrace = rtrace_present core_utils_rtrace
data modify storage mcmmt:core_utils ray_trace.end_pos set from entity @s Pos
tag @s add rtrace_ptr_end
