
scoreboard players operation temp core_utils_color_panel = red core_utils_color_panel
scoreboard players operation temp core_utils_color_panel *= constant core_utils_color_panel
execute store result storage mcmmt:core_utils color_panel.r double 0.00000001 run scoreboard players get temp core_utils_color_panel

scoreboard players operation temp core_utils_color_panel = green core_utils_color_panel
scoreboard players operation temp core_utils_color_panel *= constant core_utils_color_panel
execute store result storage mcmmt:core_utils color_panel.g double 0.00000001 run scoreboard players get temp core_utils_color_panel

scoreboard players operation temp core_utils_color_panel = blue core_utils_color_panel
scoreboard players operation temp core_utils_color_panel *= constant core_utils_color_panel
execute store result storage mcmmt:core_utils color_panel.b double 0.00000001 run scoreboard players get temp core_utils_color_panel
