
data modify storage mcmmt:core_utils make_match.tuples set value []

# loop
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.list set from storage mcmmt:core_utils make_match.pair_range
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.loop_body set value "mmt_core:utils/make_match/private/collect_iter"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils make_match.macro_bag.for_each

data modify storage mcmmt:core_utils make_match.rounds append from storage mcmmt:core_utils make_match.tuples
