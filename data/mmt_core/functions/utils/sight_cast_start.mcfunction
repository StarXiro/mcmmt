
execute anchored eyes run summon armor_stand ^ ^ ^ {Invisible:1b, Marker:1b, Tags:["sight_cast_ptr", "sight_cast_ptr_init"]}
data modify storage mcmmt:core_utils sight_cast.rotation set from entity @s Rotation
data modify entity @e[type=minecraft:armor_stand, tag=sight_cast_ptr_init, limit=1] Rotation set from storage mcmmt:core_utils sight_cast.rotation
scoreboard players set scast_present core_utils_scast 0
scoreboard players set scast_success core_utils_scast 0
data modify storage mcmmt:core_utils sight_cast.success set value 0b
execute as @e[type=minecraft:armor_stand, tag=sight_cast_ptr_init] at @s run function mmt_core:utils/private_sight_cast/ray_trace_enter
