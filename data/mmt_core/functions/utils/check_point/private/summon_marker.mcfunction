
# x
# y
# z
# id

function mmt_core:utils/linear_map/set with storage mcmmt:core_utils check_point.map_args
$scoreboard players set input core_utils_linear_map $(id)
function mmt_core:utils/linear_map/private/calc

scoreboard players set distance core_utils_color_panel 1000
scoreboard players operation angle core_utils_color_panel = result core_utils_linear_map
function mmt_core:utils/color_panel/private/calc_color

data modify storage mcmmt:core_utils check_point.init_args.r set from storage mcmmt:core_utils color_panel.r
data modify storage mcmmt:core_utils check_point.init_args.g set from storage mcmmt:core_utils color_panel.g
data modify storage mcmmt:core_utils check_point.init_args.b set from storage mcmmt:core_utils color_panel.b

$execute positioned $(x) $(y) $(z) summon minecraft:marker run function mmt_core:utils/check_point/private/init_marker
