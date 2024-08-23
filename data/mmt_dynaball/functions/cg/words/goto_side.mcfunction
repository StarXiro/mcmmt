
execute as @a[tag=dnb_player] at @s run playsound ui.button.click ambient @s ~ ~ ~

function mmt_dynaball:cg/words/clear

tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
tellraw @a[tag=dnb_player] {"type": "text", "text": ""}

tellraw @a[tag=dnb_player] {"type": "text", "text": "在本游戏中，你的目标是利用各种道具摧毁对方的建筑，使对方队伍成员全部落入虚空以达成胜利。"}

tellraw @a[tag=dnb_player] {"type": "text", "text": ""}
tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
