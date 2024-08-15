
# team team_key

# fail if not a valid team
$execute unless data storage mcmmt:core team_data.$(team) run return fail

# fail if is a team member
execute if score @s core_utils_team_id matches 0.. run return fail

# fail if not own a pid
execute unless score @s core_pid matches 0.. run return fail

$tag @s add $(team)
$team join $(team)

# add team_member
execute store result storage mcmmt:core_utils team.temp int 1.0 run scoreboard players get @s core_pid
$data modify storage mcmmt:core team_data.$(team).members append from storage mcmmt:core_utils team.temp

# set team_id
$data modify storage mcmmt:core_utils team.temp set from storage mcmmt:core team_data.$(team).team_id
execute store result score @s core_utils_team_id run data get storage mcmmt:core_utils team.temp 1.0
