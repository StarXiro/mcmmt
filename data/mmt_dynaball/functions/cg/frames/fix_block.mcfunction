kill @e[type=minecraft:item, nbt={Item:{id:"minecraft:tipped_arrow"}}, distance=..15]
$setblock $(place) stone
$fill $(fill) minecraft:barrier
$tp @s $(pos) $(face)