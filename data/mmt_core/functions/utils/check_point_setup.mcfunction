
# points
# callback
# force_ascend

$data modify storage mcmmt:core_utils check_point.points set value $(points)
$data modify storage mcmmt:core_utils check_point.callback set value "$(callback)"
$scoreboard players set force_ascend core_utils_check_point $(force_ascend)

function mmt_core:utils/private_check_point/get_max_index

execute store result storage mcmmt:core_utils check_point.map_args.from[1] int 1.0 run scoreboard players get max_index core_utils_check_point

scoreboard players set @a core_utils_check_point_id -1
