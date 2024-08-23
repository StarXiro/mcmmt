$tp @s $(pos) $(face)
$setblock $(last_place) air
$setblock $(place) minecraft:black_glazed_terracotta
$summon minecraft:item $(summon) {Item:{id:"minecraft:tipped_arrow", Count:1, tag:{Potion:"dynaball:tnt_arrow_a", CustomPotionColor:15155736}}}