
title @s title {"text": "被粘住", "bold": true, "color":"red"}
playsound entity.creeper.primed hostile @s ~ ~ ~
item replace entity @s armor.head with minecraft:tnt{Enchantments:[{id:"minecraft:binding_curse", lvl:1}]} 1
team join self_explosion @s
effect give @s glowing 3 0 true
scoreboard players set @s dnb_self_explose 60

tag @s remove dnb_stuck_with_tnt
tag @s add dnb_self_explose
