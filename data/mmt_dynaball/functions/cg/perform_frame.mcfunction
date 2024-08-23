# name
$data modify storage mcmmt:dynaball macro_bag.frame.name set value $(name)
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:cg/second_unzip"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each
