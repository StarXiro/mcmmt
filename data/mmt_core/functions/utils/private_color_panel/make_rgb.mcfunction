
scoreboard players operation temp core_utils_color_panel *= 255 core_utils_color_panel
scoreboard players operation temp core_utils_color_panel /= 600 core_utils_color_panel
scoreboard players set circum core_utils_color_panel 255
scoreboard players operation circum core_utils_color_panel -= temp core_utils_color_panel
execute if score circum core_utils_color_panel matches ..-1 run scoreboard players set circum core_utils_color_panel 0

# 255 - (255 - cirum) * distance / 1000
scoreboard players set liner core_utils_color_panel 255
scoreboard players operation liner core_utils_color_panel -= circum core_utils_color_panel
scoreboard players operation liner core_utils_color_panel *= distance core_utils_color_panel
scoreboard players operation liner core_utils_color_panel /= 1000 core_utils_color_panel
scoreboard players set temp core_utils_color_panel 255
scoreboard players operation temp core_utils_color_panel -= liner core_utils_color_panel
