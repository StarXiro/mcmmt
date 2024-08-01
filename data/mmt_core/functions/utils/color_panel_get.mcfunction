
# angle 
# distance

$data modify storage mcmmt:core_utils color_panel.args.angle set value $(angle)
execute store result score angle core_utils_color_panel run data get storage mcmmt:core_utils color_panel.args.angle 10.0
$scoreboard players set distance core_utils_color_panel $(distance)
function mmt_core:utils/private_color_panel/calc_color
