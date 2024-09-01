# TODO fullfil kill logic
function mmt_dynaball:messages/no_source_death/send
playsound minecraft:entity.firework_rocket.blast ambient @s

scoreboard players set @s dnb_spec_tp_trigger -1
tag @s add dnb_spec
tag @s remove dnb_player
team join dnb_spectators @s
gamemode spectator @s
