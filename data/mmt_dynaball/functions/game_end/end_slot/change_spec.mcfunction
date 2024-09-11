playsound entity.player.levelup ambient @s ~ ~ ~
function mmt_dynaball:messages/spectators
tag @s remove dnb_bd_warned
tag @s add dnb_spec
team join dnb_spectators @s
scoreboard players set @s dnb_spec_tp_trigger -1
gamemode spectator @s
tag @s remove dnb_player