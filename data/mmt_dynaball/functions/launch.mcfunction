
# existing teams in start_up.team_list

data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball start_up.team_list

data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:independent/generate_board"

function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

function mmt_dynaball:on_tick
