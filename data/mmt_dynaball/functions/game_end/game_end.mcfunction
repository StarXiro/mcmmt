
# remove all force load
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball start_up.force_load
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:game_end/remove_fl"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each