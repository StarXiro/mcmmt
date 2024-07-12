
team add team_a
team add team_b
team add self_explosion

team modify team_a color dark_blue
team modify team_b color red
team modify self_explosion color red

team modify team_a collisionRule pushOwnTeam
team modify team_b collisionRule pushOwnTeam

tag @a add player_dynaball
execute as @a[tag=player_dynaball] run scoreboard players set @s dnb_self_explose -1

function mmt_dynaball:weapons/tnt_arrow/send_arrow
function mmt_dynaball:on_second
function mmt_dynaball:on_tick
