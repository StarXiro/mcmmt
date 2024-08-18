
# update second
execute if score #waiting dnb_system matches ..0 run return run function mmt_dynaball:before_match/end_waiting

# refresh board
execute store result storage mcmmt:dynaball macro_bag.before_match.second int 1.0 run scoreboard players get #waiting dnb_system
function mmt_dynaball:before_match/refresh_board with storage mcmmt:dynaball macro_bag.before_match

# show title
execute if score #waiting dnb_system matches 6..9 run title @a[tag=dnb_player] subtitle {"type": "translatable", "translate": "▶ %s ◀", "color": "white", "with": [{"type": "score", "score": {"name": "#waiting", "objective": "dnb_system"}, "color": "white"}]}
execute if score #waiting dnb_system matches 4..5 run title @a[tag=dnb_player] subtitle {"type": "translatable", "translate": "▶ %s ◀", "color": "white", "with": [{"type": "score", "score": {"name": "#waiting", "objective": "dnb_system"}, "color": "yellow"}]}
execute if score #waiting dnb_system matches 1..3 run title @a[tag=dnb_player] subtitle {"type": "translatable", "translate": "▶ %s ◀", "color": "white", "with": [{"type": "score", "score": {"name": "#waiting", "objective": "dnb_system"}, "color": "red"}]}
execute if score #waiting dnb_system matches 1..9 run title @a[tag=dnb_player] title {"text": "游戏即将开始", "color": "aqua"}

# play sound
execute if score #waiting dnb_system matches 1..5 as @a[tag=dnb_player] at @s run playsound ui.button.click ambient @s ~ ~ ~

# TODO transport players at 60s


# next loop
scoreboard players remove #waiting dnb_system 1
schedule function mmt_dynaball:before_match/loop_per_sec 1s append
