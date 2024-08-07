
data modify storage mcmmt:core init_manager.for_each.list set from storage mcmmt:core teamlist
data modify storage mcmmt:core init_manager.for_each.loop_body set value "mmt_core:init_manager/team_data/loop_main"
function mmt_core:utils/for_each/do with storage mcmmt:core init_manager.for_each
