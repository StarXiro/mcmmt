
# tag arrow
execute as @e[type=minecraft:arrow, tag=!been_shot, nbt={item:{tag:{Potion:"dynaball:sand_arrow_a"}}}] at @s run function mmt_dynaball:weapons/sand_arrow/tag_shot_a
execute as @e[type=minecraft:arrow, tag=!been_shot, nbt={item:{tag:{Potion:"dynaball:sand_arrow_b"}}}] at @s run function mmt_dynaball:weapons/sand_arrow/tag_shot_b

# tick check arrow
execute as @e[type=minecraft:arrow, tag=been_shot, tag=dnb_sand_arrow, tag=in_air, tag=weapon_a, nbt={inGround:1b}] at @s run function mmt_dynaball:weapons/sand_arrow/locate_ground_a
execute as @e[type=minecraft:arrow, tag=been_shot, tag=dnb_sand_arrow, tag=in_air, tag=weapon_b, nbt={inGround:1b}] at @s run function mmt_dynaball:weapons/sand_arrow/locate_ground_b
kill @e[type=minecraft:arrow, tag=been_shot, tag=dnb_sand_arrow, tag=in_air, nbt={inGround:1b}]
function mmt_dynaball:weapons/sand_arrow/validation_check

# Do bfs
execute as @e[type=minecraft:armor_stand, tag=dnb_sand_arrow_ptr] at @s run function mmt_dynaball:weapons/sand_arrow/start_bfs

# Cancel drop
execute as @e[type=falling_block, nbt={BlockState:{Name:"minecraft:gravel"}, CancelDrop:0b}] run data modify entity @s CancelDrop set value 1b
