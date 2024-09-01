# TODO fullfil kill logic
scoreboard players set @s dnb_spec_tp_trigger -1
tag @s add dnb_spec
tag @s remove dnb_player
team join dnb_spectators @s
gamemode spectator @s
say 666