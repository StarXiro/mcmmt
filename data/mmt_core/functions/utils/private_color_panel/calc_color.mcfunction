
execute if score angle core_utils_color_panel matches -600..600 run function mmt_core:utils/private_color_panel/red
execute if score angle core_utils_color_panel matches 600..1800 run function mmt_core:utils/private_color_panel/green
execute if score angle core_utils_color_panel matches -1800..-600 run function mmt_core:utils/private_color_panel/blue
function mmt_core:utils/private_color_panel/move_answer
