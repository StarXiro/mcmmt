
# point_id

execute store result storage mcmmt:core_utils check_point.init_args.x int 1.0 run data get entity @s Pos[0] 1.0
execute store result storage mcmmt:core_utils check_point.init_args.y int 1.0 run data get entity @s Pos[1] 1.0
execute store result storage mcmmt:core_utils check_point.init_args.z int 1.0 run data get entity @s Pos[2] 1.0
$data modify storage mcmmt:core_utils check_point.init_args.id set value $(point_id)

function mmt_core:utils/private_check_point/summon_marker with storage mcmmt:core_utils check_point.init_args
