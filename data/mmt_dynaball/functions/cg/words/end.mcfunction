
execute as @a[tag=dnb_player] at @s run playsound ui.button.click ambient @s ~ ~ ~

function mmt_dynaball:cg/words/clear

tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
tellraw @a[tag=dnb_player] {"type": "text", "text": ""}

tellraw @a[tag=dnb_player] {"type": "text", "text": "祝你好运，玩得开心！"}

tellraw @a[tag=dnb_player] {"type": "text", "text": ""}
tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
