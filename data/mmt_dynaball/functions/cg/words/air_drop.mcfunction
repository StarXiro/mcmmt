
execute as @a[tag=dnb_player] at @s run playsound ui.button.click ambient @s ~ ~ ~

function mmt_dynaball:cg/words/clear

tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
tellraw @a[tag=dnb_player] {"type": "text", "text": ""}

tellraw @a[tag=dnb_player] {"type": "text", "text": "游戏中会有补给物资投放至地面，收集补给箱中的物品，合理使用它们。"}

tellraw @a[tag=dnb_player] {"type": "text", "text": ""}
tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
