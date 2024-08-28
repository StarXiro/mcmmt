
gamemode spectator @a[tag=dnb_player]
scoreboard players set cg_second dnb_system 0

data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:cg/perform_tp"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

schedule function mmt_dynaball:cg/cg_tick 1t append
schedule function mmt_dynaball:cg/cg_second 1s append
