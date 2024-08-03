
execute as @s on origin run tag @s add dnb_air_strike_caller
execute as @a[tag=player_dynaball, tag=dnb_air_strike_caller, tag=team_b] at @s run function mmt_dynaball:weapons/air_strike/locate_pos_b
kill @s

