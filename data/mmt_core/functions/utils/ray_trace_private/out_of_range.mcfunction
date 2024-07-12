
scoreboard players set rtrace_success core_utils_rtrace 0
data modify storage mcmmt:core_utils ray_trace.success set value 0b
execute store result storage mcmmt:core_utils ray_trace.iter_cnt int 1.0 run scoreboard players get rtrace_present core_utils_rtrace
tag @s add rtrace_ptr_end
