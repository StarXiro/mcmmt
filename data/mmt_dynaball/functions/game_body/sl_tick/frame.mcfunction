
# main loop
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:game_body/sl_tick/sl_loop"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# next schedule
schedule function mmt_dynaball:game_body/sl_tick/frame 1t replace