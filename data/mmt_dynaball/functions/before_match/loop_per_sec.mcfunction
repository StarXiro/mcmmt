
# update second
execute if score #waiting dnb_system matches ..0 run return run function mmt_dynaball:before_match/end_waiting

# refresh board
execute store result storage mcmmt:dynaball macro_bag.before_match.second int 1.0 run scoreboard players get #waiting dnb_system
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball start_up.team_list
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:before_match/refresh_board"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

execute if score #waiting dnb_system matches 91 run title @a[tag=dnb_player] actionbar {"type": "text", "color": "white", "text": "正在准备完整度检测..."}
execute if score #waiting dnb_system matches 90 run function mmt_dynaball:checker/looper

# transport tip
execute if score #waiting dnb_system matches 63 run title @a[tag=dnb_player] title {"type": "text", "color": "aqua", "text": "传送至场地..."}
execute if score #waiting dnb_system matches 60 run function mmt_dynaball:cg/do_transportation

# spectators
execute if score #waiting dnb_system matches 20 run function mmt_dynaball:spectators/enable

# show vs
execute if score #waiting dnb_system matches 15 run title @a[tag=dnb_player] times 0t 60t 5t
execute if score #waiting dnb_system matches 15 run function mmt_dynaball:before_match/show_vs

# show countdown title
execute if score #waiting dnb_system matches 10 run title @a[tag=dnb_player] times 0t 20t 5t
execute if score #waiting dnb_system matches 6..9 run title @a[tag=dnb_player] subtitle {"type": "translatable", "translate": "▶ %s ◀", "color": "white", "with": [{"type": "score", "score": {"name": "#waiting", "objective": "dnb_system"}, "color": "white"}]}
execute if score #waiting dnb_system matches 4..5 run title @a[tag=dnb_player] subtitle {"type": "translatable", "translate": "▶ %s ◀", "color": "white", "with": [{"type": "score", "score": {"name": "#waiting", "objective": "dnb_system"}, "color": "yellow"}]}
execute if score #waiting dnb_system matches 1..3 run title @a[tag=dnb_player] subtitle {"type": "translatable", "translate": "▶ %s ◀", "color": "white", "with": [{"type": "score", "score": {"name": "#waiting", "objective": "dnb_system"}, "color": "red"}]}
execute if score #waiting dnb_system matches 1..9 run title @a[tag=dnb_player] title {"text": "游戏即将开始", "color": "aqua"}

# play sound
execute if score #waiting dnb_system matches 63 as @a[tag=dnb_player] at @s run playsound minecraft:ui.button.click ambient @s ~ ~ ~
execute if score #waiting dnb_system matches 1..5 as @a[tag=dnb_player] at @s run playsound ui.button.click ambient @s ~ ~ ~

# next loop
scoreboard players remove #waiting dnb_system 1
schedule function mmt_dynaball:before_match/loop_per_sec 1s replace
