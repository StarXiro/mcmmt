
# summon_list list[summon_data]

$data modify storage mcmmt:core_utils check_point.summon.for_each.list set value $(summon_list)
data modify storage mcmmt:core_utils check_point.summon.for_each.loop_body set value "mmt_core:utils/check_point/private/batch_iteration"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils check_point.summon.for_each
