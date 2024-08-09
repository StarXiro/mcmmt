
# index
# object (position)

$data modify storage mcmmt:core_utils check_point.vec3_temp set value $(object)

data modify storage mcmmt:core_utils check_point.init_args.x set from storage mcmmt:core_utils check_point.vec3_temp[0]
data modify storage mcmmt:core_utils check_point.init_args.y set from storage mcmmt:core_utils check_point.vec3_temp[1]
data modify storage mcmmt:core_utils check_point.init_args.z set from storage mcmmt:core_utils check_point.vec3_temp[2]

function mmt_core:utils/check_point/private/summon_marker with storage mcmmt:core_utils check_point.init_args
