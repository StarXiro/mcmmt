
# index

scoreboard players operation temp core_utils_make_match = ring_mod core_utils_make_match
$scoreboard players remove temp core_utils_make_match $(index)

$data modify storage mcmmt:core_utils make_match.macro_bag.get_make.pos1 set value $(index)
execute store result storage mcmmt:core_utils make_match.macro_bag.get_make.pos2 int 1.0 run scoreboard players get temp core_utils_make_match

function mmt_core:utils/make_match/private/make_get with storage mcmmt:core_utils make_match.macro_bag.get_make

data modify storage mcmmt:core_utils make_match.tuples append from storage mcmmt:core_utils make_match.match
