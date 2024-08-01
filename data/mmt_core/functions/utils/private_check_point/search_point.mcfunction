
# id

# validate
$scoreboard players set index core_utils_check_point $(id)
execute if score max_index core_utils_check_point < index core_utils_check_point run return fail

$data modify storage mcmmt:core_utils check_point.target set from storage mcmmt:core_utils check_point.points[$(id)]
