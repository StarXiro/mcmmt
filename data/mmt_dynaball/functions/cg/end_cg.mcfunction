schedule clear mmt_dynaball:cg/cg_tick
schedule clear mmt_dynaball:air_drop/frame
kill @e[type=minecraft:block_display, tag=dnb_camera]

# teleport
gamemode adventure @a[tag=dnb_player]
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:cg/end_teleport"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

title @a[tag=dnb_player] title {"type": "text", "color": "aqua", "text": "等待游戏开始..."}
