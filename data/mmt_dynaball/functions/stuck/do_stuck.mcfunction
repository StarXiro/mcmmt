
tag @s add dnb_stuck
scoreboard players set @s dnb_stuck_cnt 4
item replace entity @s armor.head with minecraft:tnt{Enchantments:[{id:"minecraft:binding_curse", lvl:1}]} 1
title @s title {"type": "text", "text": "被粘住", "color": "red", "bold": true}
playsound minecraft:entity.creeper.primed ambient @s ~ ~ ~
effect give @s minecraft:glowing 4
