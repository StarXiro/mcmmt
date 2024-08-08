
# list any list

$data modify storage mcmmt:core_utils shuffle.list set value $(list)
function mmt_core:utils/for_each/len with storage mcmmt:core_utils shuffle
execute store result score last core_utils_shuffle run data get storage mcmmt:core_utils for_each.length 1.0
scoreboard players remove last core_utils_shuffle 1
scoreboard players set chosen core_utils_shuffle 0

function mmt_core:utils/shuffle/private/iteration
