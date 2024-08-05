
execute store result storage mcmmt:core_utils check_point.max_index int 1.0 run scoreboard players get max_index core_utils_check_point
function mmt_core:utils/check_point/private/index_macro with storage mcmmt:core_utils check_point
execute if score out_of_bound core_utils_check_point matches 1.. run return 1
function mmt_core:utils/check_point/private/get_max_index
