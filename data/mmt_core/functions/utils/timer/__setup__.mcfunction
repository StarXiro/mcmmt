
# setup core.utils.timer
data modify storage mcmmt:core_utils timer set value {stamp: 1}

# utils.timer
scoreboard objectives add core_utils_timer dummy
scoreboard objectives add core_utils_display_timer dummy
scoreboard players set last_sec core_utils_timer -2147483648
scoreboard players set second core_utils_timer 0
scoreboard players set tick core_utils_timer 0
scoreboard players set status core_utils_timer 0
scoreboard players set offset core_utils_timer -60
scoreboard players set stamp_index core_utils_timer 1
scoreboard players set tick core_utils_display_timer 0
scoreboard players display name tick core_utils_display_timer "游戏刻："
scoreboard players set second core_utils_display_timer 0
scoreboard players display name second core_utils_display_timer "秒："
scoreboard objectives modify core_utils_display_timer displayname {"type": "translatable", "translate": "计时器-[%s]", "with": [{"text": "停止", "color": "gray"}]}
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.timer
