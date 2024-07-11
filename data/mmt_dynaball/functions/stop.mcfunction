
schedule clear mmt_dynaball:on_tick
schedule clear mmt_dynaball:on_second

team leave @a[tag=player_dynaball]
tag @a[tag=player_dynaball] remove player_dynaball
team remove team_a
team remove team_b
team remove self_explosion