
# object

$data modify storage mcmmt:core_utils team.temp set from storage mcmmt:core team_data.$(object)

$data modify storage mcmmt:core_utils team.macro_bag.show.key set value $(object)
data modify storage mcmmt:core_utils team.macro_bag.show.team_id set from storage mcmmt:core_utils team.temp.team_id
data modify storage mcmmt:core_utils team.macro_bag.show.display set from storage mcmmt:core_utils team.temp.display
data modify storage mcmmt:core_utils team.macro_bag.show.color set from storage mcmmt:core_utils team.temp.color
data modify storage mcmmt:core_utils team.macro_bag.show.score set from storage mcmmt:core_utils team.temp.score

function mmt_core:utils/team/private/print with storage mcmmt:core_utils team.macro_bag.show

tellraw @a {"type": "text", "text": "----------------------", "color": "gray"}
