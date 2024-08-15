
# object

$execute store result score temp2 core_utils_team run data get storage mcmmt:core team_data.$(object).team_id 1.0

$execute if score temp2 core_utils_team = temp core_utils_team run data modify storage mcmmt:core_utils team.macro_bag.leave.key set value $(object)

$execute if score temp2 core_utils_team = temp core_utils_team run data modify storage mcmmt:core_utils team.macro_bag.for_each.list set from storage mcmmt:core team_data.$(object).members

execute if score temp2 core_utils_team = temp core_utils_team run function mmt_core:utils/for_each/break
