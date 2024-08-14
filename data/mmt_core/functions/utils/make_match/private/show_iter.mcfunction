
# index
# object

$scoreboard players set temp2 core_utils_make_match $(index)
scoreboard players add temp2 core_utils_make_match 1
execute store result storage mcmmt:core_utils make_match.macro_bag.show_line.index int 1.0 run scoreboard players get temp2 core_utils_make_match

$data modify storage mcmmt:core_utils make_match.temp set value $(object)
execute if data storage mcmmt:core_utils make_match.temp.empty_round run function mmt_core:utils/make_match/private/show_empty
execute unless data storage mcmmt:core_utils make_match.temp.empty_round run function mmt_core:utils/make_match/private/show_vs

function mmt_core:utils/make_match/private/show_line with storage mcmmt:core_utils make_match.macro_bag.show_line
