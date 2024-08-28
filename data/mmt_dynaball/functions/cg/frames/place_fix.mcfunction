kill @e[type=minecraft:item, nbt={Item:{id:"minecraft:oak_planks"}}, distance=..15]
$setblock $(place) oak_planks
$playsound block.wood.place ambient @a[tag=dnb_player] $(place)