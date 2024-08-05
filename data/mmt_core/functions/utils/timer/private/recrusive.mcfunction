
execute if score stamp_index core_utils_timer matches ..0 run return fail
execute store result storage mcmmt:core_utils timer.stamp int 1.0 run scoreboard players get stamp_index core_utils_timer
function mmt_core:utils/timer/private/del_stamp with storage mcmmt:core_utils timer
scoreboard players remove stamp_index core_utils_timer 1
function mmt_core:utils/timer/private/recrusive
