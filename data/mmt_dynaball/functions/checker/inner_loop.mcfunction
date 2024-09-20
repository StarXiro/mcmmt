
$data modify storage mcmmt:dynaball macro_bag.checker.summon.x set value $(object)

data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball macro_bag.checker.range.in
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:checker/summon"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each
