$execute as @a[tag=dnb_player, tag=$(tag)] run spectate @e[type=minecraft:block_display,limit=1,tag=$(camera)] @s
$execute as @e[type=block_display,limit=1,tag=$(camera)] at @s run tp ^ ^ ^0.01