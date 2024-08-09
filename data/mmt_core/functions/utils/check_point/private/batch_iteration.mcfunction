
# index
# object

$data modify storage mcmmt:core_utils check_point.summon.item set value $(object)

data modify storage mcmmt:core_utils check_point.init_args.id set from storage mcmmt:core_utils check_point.summon.item.id
data modify storage mcmmt:core_utils check_point.summon.for_each.list set from storage mcmmt:core_utils check_point.summon.item.multi_pos
data modify storage mcmmt:core_utils check_point.summon.for_each.loop_body set value "mmt_core:utils/check_point/private/multi_pos_iter"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils check_point.summon.for_each
