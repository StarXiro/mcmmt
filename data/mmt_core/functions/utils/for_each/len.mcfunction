
# list object list

scoreboard players set iter core_utils_for_each 0
scoreboard players set len core_utils_for_each 1
data modify storage mcmmt:core_utils for_each.macro_bag.args.index set value 0
data modify storage mcmmt:core_utils for_each.length set value 0
$data modify storage mcmmt:core_utils for_each.list set value $(list)
function mmt_core:utils/for_each/private/len_iteration with storage mcmmt:core_utils for_each.macro_bag.args
