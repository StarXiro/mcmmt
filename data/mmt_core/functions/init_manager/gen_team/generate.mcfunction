$data modify storage mcmmt:core init_manager.temp set from storage mcmmt:core team_data.$(object)
$data modify storage mcmmt:core init_manager.make_team.id set value "$(object)"
data modify storage mcmmt:core init_manager.make_team.name set from storage mcmmt:core init_manager.temp.display
data modify storage mcmmt:core init_manager.make_team.color set from storage mcmmt:core init_manager.temp.color
function mmt_core:init_manager/gen_team/make_team with storage mcmmt:core init_manager.make_team