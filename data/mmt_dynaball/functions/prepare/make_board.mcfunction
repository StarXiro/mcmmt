
# team_a
# team_b
# ac
# bc
# map_name
# p / max_p
# r / max_r
# game_id

$scoreboard objectives add dnb_gen_display_$(game_id) dummy

$data modify storage mcmmt:dynaball system.board_names append value "dnb_gen_display_$(game_id)"

$scoreboard objectives modify dnb_gen_display_$(game_id) displayname {"text": "Dynaball", "color": "gold", "bold": true}
$scoreboard objectives modify dnb_gen_display_$(game_id) numberformat blank
# mcmmt
$scoreboard players set mcmmt dnb_gen_display_$(game_id) 110
$scoreboard players display name mcmmt dnb_gen_display_$(game_id) {"text": "--MCMMT--", "color": "gray"}
# progress
$scoreboard players set progress dnb_gen_display_$(game_id) 100
$scoreboard players display numberformat progress dnb_gen_display_$(game_id) fixed {"type": "translatable", "translate": "%s/%s", "color": "gray", "with": [{"text": "$(p)", "color": "white"}, {"text": "$(max_p)", "color": "gray"}]}
$scoreboard players display name progress dnb_gen_display_$(game_id) {"text": "游戏进度：", "color": "aqua"}
# blank1
$scoreboard players set blank1 dnb_gen_display_$(game_id) 90
$scoreboard players display name blank1 dnb_gen_display_$(game_id) ""
# dynaball
$scoreboard players set dnb_sep dnb_gen_display_$(game_id) 80
$scoreboard players display name dnb_sep dnb_gen_display_$(game_id) {"text": "--Dynaball--", "color": "gray"}
# present_round
$scoreboard players set round dnb_gen_display_$(game_id) 75
$scoreboard players display name round dnb_gen_display_$(game_id) {"text": "当前轮数：", "color": "aqua"}
$scoreboard players display numberformat round dnb_gen_display_$(game_id) fixed {"type": "translatable", "translate": "%s/%s", "color": "gray", "with": [{"text": "$(r)", "color": "green"}, {"text": "$(max_r)", "color": "gray"}]}
# map_name
$scoreboard players set map_name dnb_gen_display_$(game_id) 70
$scoreboard players display name map_name dnb_gen_display_$(game_id) {"type":"translatable", "translate": "当前地图：%s", "color": "aqua", "with": [{"type": "text", "text": "$(map_name)", "italic": true, "color": "white"}]}
# blank2
$scoreboard players set blank2 dnb_gen_display_$(game_id) 60
$scoreboard players display name blank2 dnb_gen_display_$(game_id) ""
# vs
$scoreboard players set vs dnb_gen_display_$(game_id) 55
$scoreboard players display name vs dnb_gen_display_$(game_id) {"type": "translatable", "translate": "%s vs. %s", "italic":true, "with": [{"type": "text", "text": "$(team_a)", "color": "$(ac)"}, {"type": "text", "text": "$(team_b)", "color": "$(bc)"}]}
# comp
$scoreboard players set comp_a dnb_gen_display_$(game_id) 50
$scoreboard players set comp_b dnb_gen_display_$(game_id) 49
$scoreboard players display name comp_a dnb_gen_display_$(game_id) {"type": "translatable", "translate": "%s 区域完整度", "color": "white", "with": [{"type": "text", "text": "$(team_a)", "color": "$(ac)"}]}
$scoreboard players display name comp_b dnb_gen_display_$(game_id) {"type": "translatable", "translate": "%s 区域完整度", "color": "white", "with": [{"type": "text", "text": "$(team_b)", "color": "$(bc)"}]}
$scoreboard players display numberformat comp_a dnb_gen_display_$(game_id) fixed [{"type": "text", "text": "100", "color": "red"}, {"type": "text", "text": "%", "color": "gray"}]
$scoreboard players display numberformat comp_b dnb_gen_display_$(game_id) fixed [{"type": "text", "text": "100", "color": "red"}, {"type": "text", "text": "%", "color": "gray"}]
# blank3
$scoreboard players set blank3 dnb_gen_display_$(game_id) 45
$scoreboard players display name blank3 dnb_gen_display_$(game_id) ""
# signature
$scoreboard players set signature dnb_gen_display_$(game_id) 40
$scoreboard players display name signature dnb_gen_display_$(game_id) {"text": "RGFya3NreQ==", "color": "gray"}
