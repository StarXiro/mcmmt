
scoreboard players set scast_success core_utils_scast 1
data modify storage mcmmt:core_utils sight_cast.success set value 1b
execute store result storage mcmmt:core_utils sight_cast.iter_cnt int 1.0 run scoreboard players get scast_present core_utils_scast
scoreboard players operation scast_last_iter core_utils_scast = scast_present core_utils_scast
data modify storage mcmmt:core_utils sight_cast.end_pos set from entity @s Pos
tag @s add sight_cast_ptr_end
