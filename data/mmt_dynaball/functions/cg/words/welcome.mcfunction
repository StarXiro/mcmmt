
execute as @a[tag=dnb_player] at @s run playsound ui.button.click ambient @s ~ ~ ~

function mmt_dynaball:cg/words/clear

tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
tellraw @a[tag=dnb_player] {"type": "text", "text": ""}

tellraw @a[tag=dnb_player] [{"type": "text", "text": "欢迎来到 "}, {"type": "text", "text": "Dynaball", "color": "red", "bold": true}]

tellraw @a[tag=dnb_player] {"type": "text", "text": ""}
tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}

