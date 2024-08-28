
$scoreboard objectives add dnb_md_$(team) dummy {"type": "text", "text": "Dynaball", "color": "gold", "bold": true}
$scoreboard objectives setdisplay sidebar.team.$(color) dnb_md_$(team)

$scoreboard objectives modify dnb_md_$(team) numberformat blank

$scoreboard players set mcmmt dnb_md_$(team) 200
$scoreboard players display name mcmmt dnb_md_$(team) {"type": "text", "text": "--MCMMT--", "color": "gray"}

$scoreboard players set progress dnb_md_$(team) 190
$scoreboard players display name progress dnb_md_$(team) {"text": "游戏进度：", "color": "aqua"}
$scoreboard players display numberformat progress dnb_md_$(team) fixed {"type": "translatable", "translate": "%s/%s", "color": "gray", "with": [{"type": "text", "text": "$(p)", "color": "white"}, {"type": "text", "text": "$(mp)"}]}

$scoreboard players set blank0 dnb_md_$(team) 180
$scoreboard players display name blank0 dnb_md_$(team) ""

$scoreboard players set dynaball dnb_md_$(team) 170
$scoreboard players display name dynaball dnb_md_$(team) {"type": "text", "text": "--Dynaball--", "color": "gray"}

$scoreboard players set present_round dnb_md_$(team) 165
$scoreboard players display name present_round dnb_md_$(team) {"text": "当前轮数：", "color": "aqua"}
$scoreboard players display numberformat present_round dnb_md_$(team) fixed {"type": "translatable", "translate": "%s/%s", "color": "gray", "with": [{"type": "text", "text": "-", "color": "green"}, {"type": "text", "text": "-"}]}

$scoreboard players set next_round dnb_md_$(team) 160
$scoreboard players display name next_round dnb_md_$(team) {"type": "text", "text": "下一轮：", "color": "red"}
$scoreboard players display numberformat next_round dnb_md_$(team) fixed {"type": "translatable", "translate": "%ss", "color": "red", "with": [{"type": "text", "text": "120", "color": "yellow"}]}

$scoreboard players set blank1 dnb_md_$(team) 155
$scoreboard players display name blank1 dnb_md_$(team) ""

$scoreboard players set points dnb_md_$(team) 150
$scoreboard players display name points dnb_md_$(team) {"text": "队伍积分：", "color": "aqua"}

$scoreboard players set points0 dnb_md_$(team) 140
$scoreboard players display name points0 dnb_md_$(team) {"text": "暂无分数", "color": "gray"}

$scoreboard players set points1 dnb_md_$(team) 130
$scoreboard players display name points1 dnb_md_$(team) {"text": "...", "color": "gray"}

$scoreboard players set points2 dnb_md_$(team) 120
$scoreboard players display name points2 dnb_md_$(team) {"text": "...", "color": "gray"}

$scoreboard players set points3 dnb_md_$(team) 110
$scoreboard players display name points3 dnb_md_$(team) {"text": "...", "color": "gray"}

$scoreboard players set blank2 dnb_md_$(team) 100
$scoreboard players display name blank2 dnb_md_$(team) ""

# signature
$scoreboard players set signature dnb_md_$(team) 40
$scoreboard players display name signature dnb_md_$(team) {"text": "RGFya3NreQ==", "color": "gray"}
