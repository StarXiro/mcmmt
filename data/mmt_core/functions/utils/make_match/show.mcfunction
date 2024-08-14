
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.list set from storage mcmmt:core_utils make_match.rounds
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.loop_body set value "mmt_core:utils/make_match/private/show_round"

tellraw @a {"text": "-------------------------", "color": "dark_purple"}
tellraw @a {"text": "-------------------------", "color": "gray"}

function mmt_core:utils/for_each/do with storage mcmmt:core_utils make_match.macro_bag.for_each

tellraw @a {"text": "-------------------------", "color": "dark_purple"}
