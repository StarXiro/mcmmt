
# index
# object

$execute if score temp core_utils_team matches $(object) run data modify storage mcmmt:core_utils team.macro_bag.leave.pos set value $(index)

$execute if score temp core_utils_team matches $(object) run function mmt_core:utils/for_each/break
