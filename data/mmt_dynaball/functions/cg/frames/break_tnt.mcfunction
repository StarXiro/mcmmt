$setblock $(pos) air destroy
kill @e[type=minecraft:item, nbt={Item:{id:"minecraft:black_glazed_terracotta"}}, distance=..15]
$summon minecraft:item $(pos) {Item:{id:"minecraft:tipped_arrow", Count:1, tag:{Potion:"dynaball:tnt_arrow_a", CustomPotionColor:15155736}}}