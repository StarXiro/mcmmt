
# fail if not in a team
execute unless score @s core_utils_team_id matches 0.. run return fail

# find team
scoreboard players operation temp core_utils_team = @s core_utils_team_id
data modify storage mcmmt:core_utils team.macro_bag.for_each.list set from storage mcmmt:core teamlist
data modify storage mcmmt:core_utils team.macro_bag.for_each.loop_body set value "mmt_core:utils/team/private/find_match"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils team.macro_bag.for_each

# del tag
function mmt_core:utils/team/private/del_tag with storage mcmmt:core_utils team.macro_bag.leave

# find pos
scoreboard players operation temp core_utils_team = @s core_pid
data modify storage mcmmt:core_utils team.macro_bag.for_each.loop_body set value "mmt_core:utils/team/private/find_pos"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils team.macro_bag.for_each

# del pid
function mmt_core:utils/team/private/del_pid with storage mcmmt:core_utils team.macro_bag.leave

scoreboard players set @s core_utils_team_id -1
