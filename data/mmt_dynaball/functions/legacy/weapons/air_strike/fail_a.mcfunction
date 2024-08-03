
tellraw @s {"text": "无法确定空袭坐标", "color": "red"}
give @s[tag=player_dynaball, tag=team_a] minecraft:ender_pearl{CustomModelData:14, display:{Name:'{"text":"精准空袭", "color": "gold", "italic": false, "bold": true}', Lore:['{"text":"向视线指向的方块处召唤精准空袭", "italic": false, "color": "gray"}']}} 1 
function mmt_core:utils/sight_cast_clear
