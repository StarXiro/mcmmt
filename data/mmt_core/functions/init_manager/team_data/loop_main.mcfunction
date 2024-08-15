
# index
# object

$data modify storage mcmmt:core init_manager.team_data.key set value $(object)
$data modify storage mcmmt:core init_manager.team_data.display set from storage mcmmt:core teamlist2[$(index)]
$data modify storage mcmmt:core init_manager.team_data.color set from storage mcmmt:core teamcolor[$(index)]
$data modify storage mcmmt:core init_manager.team_data.id set value $(index)

function mmt_core:init_manager/team_data/make_compound with storage mcmmt:core init_manager.team_data
