
data modify storage mcmmt:core_utils make_match.macro_bag.list set from storage mcmmt:core_utils make_match.tuples
data modify storage mcmmt:core_utils make_match.macro_bag.loop_body set value "mmt_core:utils/make_match/private/private_show"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils make_match.macro_bag
