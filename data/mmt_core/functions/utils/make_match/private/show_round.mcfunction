
# index
# object

$scoreboard players set temp core_utils_make_match $(index)
scoreboard players add temp core_utils_make_match 1

tellraw @a {"translate": "第 %s 轮：", "with": [{"type": "score", "score": {"name": "temp", "objective": "core_utils_make_match"}, "color": "gold"}]}

$data modify storage mcmmt:core_utils make_match.macro_bag.for_each.list set value $(object)
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.loop_body set value "mmt_core:utils/make_match/private/show_iter"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils make_match.macro_bag.for_each

tellraw @a {"text": "-------------------------", "color": "gray"}
