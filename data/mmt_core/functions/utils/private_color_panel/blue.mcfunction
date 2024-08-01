# R
scoreboard players set temp core_utils_color_panel -600
scoreboard players operation temp core_utils_color_panel -= angle core_utils_color_panel
function mmt_core:utils/private_color_panel/make_rgb
scoreboard players operation red core_utils_color_panel = temp core_utils_color_panel
# G
scoreboard players operation temp core_utils_color_panel = angle core_utils_color_panel
scoreboard players add temp core_utils_color_panel 1800
function mmt_core:utils/private_color_panel/make_rgb
scoreboard players operation green core_utils_color_panel = temp core_utils_color_panel
# B
scoreboard players set blue core_utils_color_panel 255