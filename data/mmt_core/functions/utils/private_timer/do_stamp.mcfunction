
# stamp stamp counter
$tellraw @a {"translate": "[Core.Utils.Timer] %s 创建了时间点 %s", "with": [{"selector": "@s", "color": "blue"}, {"text": "$(stamp)", "color": "gold"}]}
$scoreboard players operation stamp$(stamp) core_utils_display_timer = tick core_utils_timer
$scoreboard players display name stamp$(stamp) core_utils_display_timer {"type": "translatable", "translate": "时间点%s", "color": "gray", "with": [{"text": "$(stamp)", "color": "gold"}]}
$scoreboard players display numberformat stamp$(stamp) core_utils_display_timer styled {"color": "dark_green"}
