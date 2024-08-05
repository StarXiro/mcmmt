
scoreboard players set scast_success core_utils_scast 0
data modify storage mcmmt:core_utils sight_cast.success set value 0b
execute store result storage mcmmt:core_utils sight_cast.iter_cnt int 1.0 run scoreboard players get scast_present core_utils_scast
tag @s add sight_cast_ptr_end
