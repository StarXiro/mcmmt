
execute if score ongoing_games dnb_system matches 1.. run return fail
execute if score rend_flg dnb_system matches 1 run return fail
scoreboard players set rend_flg dnb_system 1
tellraw @a[tag=dnb_broadcast] {"type": "translatable", "translate": "%s 所有对局已结束，将在3s后返回大厅等待下一轮开始。", "color": "white", "with": [{"type": "text", "text": "[ⓘ]", "color": "dark_purple"}]}
schedule function mmt_dynaball:game_end/end_round/return_lobby 3s
