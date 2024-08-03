
tag @s remove dnb_air_strike_caller
execute at @s run function mmt_core:utils/sight_cast_start
execute if score scast_success core_utils_scast matches 0 run return run function mmt_dynaball:weapons/air_strike/fail_a
execute as @e[type=minecraft:armor_stand, tag=sight_cast_ptr_end, limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Tags:["air_strike_pos", "weapon_a"]}
function mmt_core:utils/sight_cast_clear
