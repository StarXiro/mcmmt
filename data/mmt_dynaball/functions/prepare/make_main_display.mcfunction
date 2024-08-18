# progress
# max_progress

scoreboard objectives add dnb_main_display dummy {"type": "text", "text": "Dynaball", "color": "gold", "bold": true}

scoreboard objectives modify dnb_main_display numberformat blank

scoreboard players set mcmmt dnb_main_display 200
scoreboard players display name mcmmt dnb_main_display {"type": "text", "text": "--MCMMT--", "color": "gray"}

scoreboard players set progress dnb_main_display 190
scoreboard players display name progress dnb_main_display {"text": "游戏进度：", "color": "aqua"}
$scoreboard players display numberformat progress dnb_main_display fixed {"type": "translatable", "translate": "%s/%s", "color": "gray", "with": [{"type": "text", "text": "$(progress)", "color": "white"}, {"type": "text", "text": "$(max_progress)"}]}

scoreboard players set blank0 dnb_main_display 180
scoreboard players display name blank0 dnb_main_display ""

scoreboard players set dynaball dnb_main_display 170
scoreboard players display name dynaball dnb_main_display {"type": "text", "text": "--Dynaball--", "color": "gray"}

scoreboard players set next_round dnb_main_display 160
scoreboard players display name next_round dnb_main_display {"type": "text", "text": "下一轮：", "color": "red"}
scoreboard players display numberformat next_round dnb_main_display fixed {"type": "translatable", "translate": "%ss", "color": "red", "with": [{"type": "text", "text": "120", "color": "yellow"}]}

scoreboard players set blank1 dnb_main_display 155
scoreboard players display name blank1 dnb_main_display ""

scoreboard players set points dnb_main_display 150
scoreboard players display name points dnb_main_display {"text": "队伍积分：", "color": "aqua"}

# points

scoreboard players set blank2 dnb_main_display 100
scoreboard players display name blank2 dnb_main_display ""

# signature
scoreboard players set signature dnb_main_display 40
scoreboard players display name signature dnb_main_display {"text": "RGFya3NreQ==", "color": "gray"}
