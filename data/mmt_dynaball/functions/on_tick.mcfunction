
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:independent/in_on_tick"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

schedule function mmt_dynaball:on_tick 1t replace
