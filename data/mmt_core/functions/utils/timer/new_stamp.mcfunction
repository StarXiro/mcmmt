
execute store result storage mcmmt:core_utils timer.stamp int 1.0 run scoreboard players get stamp_index core_utils_timer
function mmt_core:utils/timer/private/do_stamp with storage mcmmt:core_utils timer
scoreboard players add stamp_index core_utils_timer 1
