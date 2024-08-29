# mcmmt
scoreboard players set mcmmt dnb_spec_display 1100
scoreboard players display name mcmmt dnb_spec_display {"text": "--MCMMT--", "color": "gray"}
# progress
scoreboard players set progress dnb_spec_display 1000
$scoreboard players display numberformat progress dnb_spec_display fixed {"type": "translatable", "translate": "%s/%s", "color": "gray", "with": [{"text": "$(p)", "color": "white"}, {"text": "$(mp)", "color": "gray"}]}
scoreboard players display name progress dnb_spec_display {"text": "游戏进度：", "color": "aqua"}
# blank1
scoreboard players set blank1 dnb_spec_display 900
scoreboard players display name blank1 dnb_spec_display ""
# dynaball
scoreboard players set dnb_sep dnb_spec_display 800
scoreboard players display name dnb_sep dnb_spec_display {"text": "--Dynaball--", "color": "gray"}
# present_round
scoreboard players set round dnb_spec_display 750
scoreboard players display name round dnb_spec_display {"text": "当前轮数：", "color": "aqua"}
$scoreboard players display numberformat round dnb_spec_display fixed {"type": "translatable", "translate": "%s/%s", "color": "gray", "with": [{"text": "$(r)", "color": "green"}, {"text": "$(mr)", "color": "gray"}]}
# blank2
scoreboard players set blank2 dnb_spec_display 740
scoreboard players display name blank2 dnb_spec_display ""
# spec_sign
scoreboard players set spec_sign dnb_spec_display 730
scoreboard players display name spec_sign dnb_spec_display {"type": "text", "text": "观察者模式", "color": "gray", "italic": true}

# game pair

# blank3
scoreboard players set blank3 dnb_spec_display -1
scoreboard players display name blank3 dnb_spec_display ""
# signature
scoreboard players set signature dnb_spec_display -2
scoreboard players display name signature dnb_spec_display {"text": "RGFya3NreQ==", "color": "gray"}
