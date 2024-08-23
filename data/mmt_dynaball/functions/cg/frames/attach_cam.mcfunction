$tp @a[tag=$(tag)] @e[type=minecraft:block_display,limit=1,tag=$(camera)]
$execute as @e[type=block_display,limit=1,tag=$(camera)] at @s run tp ^ ^ ^0.01