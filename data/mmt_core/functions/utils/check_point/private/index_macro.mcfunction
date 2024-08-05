
# max_index

$execute if data storage mcmmt:core_utils check_point.points[$(max_index)] run return run function mmt_core:utils/check_point/private/success_index
scoreboard players set out_of_bound core_utils_check_point 1
scoreboard players remove max_index core_utils_check_point 1
