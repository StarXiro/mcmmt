
# list object list

scoreboard players set iter core_utils_len 0
scoreboard players set len core_utils_len 1
data modify storage mcmmt:core_utils len.args.index set value 0
data modify storage mcmmt:core_utils len.length set value 0
$data modify storage mcmmt:core_utils len.list set value $(list)
function mmt_core:utils/len/private/len_iteration with storage mcmmt:core_utils len.args

return run data get storage mcmmt:core_utils len.length 1.0
