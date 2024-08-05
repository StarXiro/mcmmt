
# setup core.utils.color_panel
data modify storage mcmmt:core_utils color_panel set value {r: 0.0d, g: 0.0d, b:0.0d, args: {angle: 0.0f, distance: 0}, particle: "minecraft:dust", trailing: "1 ~ ~ ~ 0 0 0 1 1 force @a"}

# utils.color_panel
scoreboard objectives add core_utils_color_panel dummy
scoreboard players set angle core_utils_color_panel 0
scoreboard players set distance core_utils_color_panel 500
scoreboard players set red core_utils_color_panel 0
scoreboard players set blue core_utils_color_panel 0
scoreboard players set green core_utils_color_panel 0
scoreboard players set constant core_utils_color_panel 392156
scoreboard players set circum core_utils_color_panel 0
scoreboard players set 1000 core_utils_color_panel 1000
scoreboard players set 600 core_utils_color_panel 600
scoreboard players set 255 core_utils_color_panel 255
scoreboard players set liner core_utils_color_panel 0
scoreboard players set temp core_utils_color_panel 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.color_panel
