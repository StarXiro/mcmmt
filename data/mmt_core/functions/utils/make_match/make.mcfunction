
# list any list
# round int

$data modify storage mcmmt:core_utils make_match.team_list set value $(list)
$data modify storage mcmmt:core_utils make_match.macro_bag.list set from storage mcmmt:core_utils make_match.inner_map[$(round)]
data modify storage mcmmt:core_utils make_match.macro_bag.loop_body set value "mmt_core:utils/make_match/private/body"
data modify storage mcmmt:core_utils make_match.list set value []
data modify storage mcmmt:core_utils make_match.map set value {}

function mmt_core:utils/for_each/do with storage mcmmt:core_utils make_match.macro_bag
