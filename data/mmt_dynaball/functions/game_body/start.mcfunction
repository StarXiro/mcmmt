# TODO realize game logic
tellraw @a "game start"

# add msg tag
tag @a[tag=dnb_spec] add dnb_broadcast
tag @a[tag=dnb_player] add dnb_broadcast

# begin frames
function mmt_dynaball:collision/frame
function mmt_dynaball:air_drop/frame
function mmt_dynaball:tnt_proj/frame
function mmt_dynaball:weapons/frame
function mmt_dynaball:dmg_source/frame
function mmt_dynaball:stuck/frame
