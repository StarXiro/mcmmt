
# stamp stamp counter
$scoreboard players operation stamp$(stamp) core_utils_display_timer = tick core_utils_timer
$scoreboard players display name stamp$(stamp) core_utils_display_timer "时间点$(stamp)"
$scoreboard players display numberformat stamp$(stamp) core_utils_display_timer styled {"color": "dark_aqua"}
