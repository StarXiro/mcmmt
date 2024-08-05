
# x [x轴差值区间] e.g. [-10, 10]
# y [y轴差值区间]
# z [z轴差值区间]
# max_depth 最大深度
# max_steps 最大步数
# direction 方向（复合参数）
# on_block 函数路径

$data modify storage mcmmt:core_utils search.args.x set value $(x)
$data modify storage mcmmt:core_utils search.args.y set value $(y)
$data modify storage mcmmt:core_utils search.args.z set value $(z)

execute store result score x_neg_range core_utils_search run data get storage mcmmt:core_utils search.args.x[0] 1.0
execute store result score x_pos_range core_utils_search run data get storage mcmmt:core_utils search.args.x[1] 1.0

execute store result score y_neg_range core_utils_search run data get storage mcmmt:core_utils search.args.y[0] 1.0
execute store result score y_pos_range core_utils_search run data get storage mcmmt:core_utils search.args.y[1] 1.0

execute store result score z_neg_range core_utils_search run data get storage mcmmt:core_utils search.args.z[0] 1.0
execute store result score z_pos_range core_utils_search run data get storage mcmmt:core_utils search.args.z[1] 1.0

$scoreboard players set max_depth core_utils_search $(max_depth)
$data modify storage mcmmt:core_utils search.map_args.from[1] set value $(max_depth)

$scoreboard players set max_steps core_utils_search $(max_steps)
$scoreboard players set direction core_utils_search $(direction)

$data modify storage mcmmt:core_utils search.on_block set value "$(on_block)"
