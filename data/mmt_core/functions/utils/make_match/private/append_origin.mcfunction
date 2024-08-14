
data modify storage mcmmt:core_utils make_match.macro_bag.origin.pos set from storage mcmmt:core_utils make_match.temp
function mmt_core:utils/make_match/private/origin_get with storage mcmmt:core_utils make_match.macro_bag.origin
data modify storage mcmmt:core_utils make_match.match.teams append from storage mcmmt:core_utils make_match.temp
