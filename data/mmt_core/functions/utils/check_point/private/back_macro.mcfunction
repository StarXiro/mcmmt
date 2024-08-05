
# call_id

$data modify storage mcmmt:core_utils check_point.target set from storage mcmmt:core_utils check_point.points[$(call_id)]

data modify storage mcmmt:core_utils check_point.pos_temp.x set from storage mcmmt:core_utils check_point.target.pos[0]
data modify storage mcmmt:core_utils check_point.pos_temp.y set from storage mcmmt:core_utils check_point.target.pos[1]
data modify storage mcmmt:core_utils check_point.pos_temp.z set from storage mcmmt:core_utils check_point.target.pos[2]

data modify storage mcmmt:core_utils check_point.pos_temp.r1 set from entity @s Rotation[0]
data modify storage mcmmt:core_utils check_point.pos_temp.r2 set from entity @s Rotation[1]

function mmt_core:utils/check_point/private/perform_tp with storage mcmmt:core_utils check_point.pos_temp
