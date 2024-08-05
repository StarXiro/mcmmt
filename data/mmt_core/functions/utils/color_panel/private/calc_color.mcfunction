
execute if score angle core_utils_color_panel matches -600..600 run function mmt_core:utils/color_panel/private/red
execute if score angle core_utils_color_panel matches 600..1800 run function mmt_core:utils/color_panel/private/green
execute if score angle core_utils_color_panel matches -1800..-600 run function mmt_core:utils/color_panel/private/blue
function mmt_core:utils/color_panel/private/move_answer
