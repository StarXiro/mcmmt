
# R
scoreboard players operation temp core_utils_color_panel = angle core_utils_color_panel
scoreboard players remove temp core_utils_color_panel 600
function mmt_core:utils/private_color_panel/make_rgb
scoreboard players operation red core_utils_color_panel = temp core_utils_color_panel
# G
scoreboard players set green core_utils_color_panel 255
# B
scoreboard players set temp core_utils_color_panel 1800
scoreboard players operation temp core_utils_color_panel -= angle core_utils_color_panel
function mmt_core:utils/private_color_panel/make_rgb
scoreboard players operation blue core_utils_color_panel = temp core_utils_color_panel
