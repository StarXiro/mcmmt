$playsound entity.generic.explode ambient @a[tag=dnb_player] $(place)
$particle explosion_emitter $(place)
$setblock $(place) air destroy
kill @e[type=minecraft:item, nbt={Item:{id:"minecraft:cobblestone"}}, distance=..15]
$summon minecraft:item $(place) {Item:{id:"minecraft:oak_planks", Count:1}}