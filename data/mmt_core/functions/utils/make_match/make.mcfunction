
# list any list

# move args
$data modify storage mcmmt:core_utils make_match.origin_list set value $(list)
data modify storage mcmmt:core_utils make_match.macro_bag.len.list set from storage mcmmt:core_utils make_match.origin_list

# get len
execute store result storage mcmmt:core_utils make_match.length int 1.0 run function mmt_core:utils/len/do with storage mcmmt:core_utils make_match.macro_bag.len
execute store result score length core_utils_make_match run data get storage mcmmt:core_utils make_match.length

data modify storage mcmmt:core_utils make_match.rounds set value []

function mmt_core:utils/make_match/private/main

