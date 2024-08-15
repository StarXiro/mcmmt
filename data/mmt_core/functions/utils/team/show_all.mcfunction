
tellraw @a {"type": "text", "text": "----------------------", "color": "dark_purple"}
tellraw @a {"type": "text", "text": "----------------------", "color": "gray"}

data modify storage mcmmt:core_utils team.macro_bag.for_each.list set from storage mcmmt:core teamlist
data modify storage mcmmt:core_utils team.macro_bag.for_each.loop_body set value "mmt_core:utils/team/private/show_iter"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils team.macro_bag.for_each

tellraw @a {"type": "text", "text": "----------------------", "color": "dark_purple"}
