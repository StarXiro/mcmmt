
execute as @a[tag=dnb_player] at @s run playsound ui.button.click ambient @s ~ ~ ~

function mmt_dynaball:cg/words/clear

tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
tellraw @a[tag=dnb_player] {"type": "text", "text": ""}

tellraw @a[tag=dnb_player] {"type": "translatable", "translate": "TNT箭会随时间随机补充，也可以通过使用%s挖掘投放的%s来补充。", "with": [{"text": "冶炼镐", "color": "yellow", "italic": true}, {"text": "不稳定方块", "color": "yellow", "italic": true}]}

tellraw @a[tag=dnb_player] {"type": "text", "text": ""}
tellraw @a[tag=dnb_player] {"type": "text", "text": "-----------------------------------", "color": "gold"}
