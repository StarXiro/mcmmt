
# play last sound
execute as @a[tag=dnb_player] at @s run playsound entity.arrow.hit_player ambient @s ~ ~ ~

# apply team display
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball board_saves
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:before_match/set_display"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# reset title
title @a[tag=dnb_player] reset

# start game logic
function mmt_dynaball:game_body/start
