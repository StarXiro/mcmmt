
summon armor_stand ~ ~1.6 ~ {Invisible:0b, Marker:1b, Tags:["rtrace_ptr"]}
execute store result storage mcmmt:core_utils ray_trace.rotation[0] float 0.001 run data get entity @s Rotation[0] 1000.0
execute store result storage mcmmt:core_utils ray_trace.rotation[1] float 0.001 run data get entity @s Rotation[1] 1000.0
data modify entity @e[type=minecraft:armor_stand, tag=rtrace_ptr, distance=..1.7, limit=1] Rotation set from storage mcmmt:core_utils ray_trace.rotation
scoreboard players set rtrace_present core_utils_rtrace 0
scoreboard players set rtrace_success core_utils_rtrace 0
data modify storage mcmmt:core_utils ray_trace.success set value 0b
execute as @e[type=minecraft:armor_stand, tag=rtrace_ptr, distance=..1.7] at @s run function mmt_core:utils/ray_trace_private/ray_trace_iteration
