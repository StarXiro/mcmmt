# TODO fullfil kill logic
execute if score @s dnb_dmg_source matches -1 run function mmt_dynaball:messages/no_source_death/send
execute if score @s dnb_dmg_source matches 0.. run function mmt_dynaball:messages/source_death/send
playsound minecraft:entity.firework_rocket.blast ambient @s

# add score
tag @s add dnb_dying_person
function mmt_dynaball:death/void/add_death_score with storage mcmmt:dynaball macro_bag.message
tag @s remove dnb_dying_person

# show title
title @s times 0t 30t 5t
title @s subtitle {"type": "text", "text": "你出局了", "color": "white"}
title @s title {"type": "text", "text": "☹", "color": "aqua"}

scoreboard players set @s dnb_spec_tp_trigger -1
tag @s add dnb_spec
tag @s remove dnb_player
team join dnb_spectators @s
gamemode spectator @s
