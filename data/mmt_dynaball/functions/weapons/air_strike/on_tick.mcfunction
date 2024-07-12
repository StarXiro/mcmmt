
# check for red 14
execute as @e[type=minecraft:ender_pearl, nbt={Item:{tag:{CustomModelData:14}}}] run function mmt_dynaball:weapons/air_strike/summon_a
# check for blue 15
execute as @e[type=minecraft:ender_pearl, nbt={Item:{tag:{CustomModelData:15}}}] run function mmt_dynaball:weapons/air_strike/summon_b

# check caller
execute as @e[type=minecraft:armor_stand, tag=air_strike_pos] at @s run function mmt_dynaball:weapons/air_strike/countdown_strike
execute as @e[type=minecraft:armor_stand, tag=air_strike_countdown] at @s run function mmt_dynaball:weapons/air_strike/particle