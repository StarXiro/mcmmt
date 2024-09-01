
# reset count of ongoing games
scoreboard players operation ongoing_games dnb_system = to_build dnb_system

# add msg tag
tag @a[tag=dnb_spec] add dnb_broadcast
tag @a[tag=dnb_player] add dnb_broadcast

# remove cg args & build sl data
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:game_body/remove_cg"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# remove barriers
execute as @a[tag=dnb_player] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:barrier

# give effect
effect give @a[tag=dnb_player] resistance infinite 9 true
effect give @a[tag=dnb_player] saturation infinite 0 true

# begin frames
function mmt_dynaball:collision/frame
function mmt_dynaball:air_drop/frame
function mmt_dynaball:tnt_proj/frame
function mmt_dynaball:weapons/frame
function mmt_dynaball:dmg_source/frame
function mmt_dynaball:stuck/frame
function mmt_dynaball:game_body/sl_tick/frame
function mmt_dynaball:game_body/gl_tick/frame
function mmt_dynaball:game_body/gl_tick/frame_second
function mmt_dynaball:game_body/sl_tick/frame_second
