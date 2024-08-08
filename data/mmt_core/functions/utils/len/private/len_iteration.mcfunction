
# index list index

$execute unless data storage mcmmt:core_utils len.list[$(index)] run return run function mmt_core:utils/len/private/len_end

scoreboard players add len core_utils_len 1
scoreboard players add iter core_utils_len 1
execute store result storage mcmmt:core_utils len.args.index int 1.0 run scoreboard players get iter core_utils_len
function mmt_core:utils/len/private/len_iteration with storage mcmmt:core_utils len.args
