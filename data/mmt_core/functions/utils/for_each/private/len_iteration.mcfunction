
# index list index

$execute unless data storage mcmmt:core_utils for_each.list[$(index)] run return run function mmt_core:utils/for_each/private/len_end

scoreboard players add len core_utils_for_each 1
scoreboard players add iter core_utils_for_each 1
execute store result storage mcmmt:core_utils for_each.macro_bag.args.index int 1.0 run scoreboard players get iter core_utils_for_each
function mmt_core:utils/for_each/private/len_iteration with storage mcmmt:core_utils for_each.macro_bag.args
