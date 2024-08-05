
data modify entity @s data merge from storage mcmmt:core_utils check_point.init_args
function mmt_core:utils/check_point/private/search_point with storage mcmmt:core_utils check_point.init_args
data modify entity @s data.target set from storage mcmmt:core_utils check_point.target
tag @s add cu_cp_ptr
