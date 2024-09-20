data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball start_up.team_list
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:scores/macro_init_team"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each