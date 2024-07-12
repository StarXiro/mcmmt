
# check egg
# team B
execute as @e[type=minecraft:egg, nbt={Item:{tag:{CustomModelData:12}}}] at @s run function mmt_dynaball:weapons/boom_chick/summon_team_b
# team A
execute as @e[type=minecraft:egg, nbt={Item:{tag:{CustomModelData:13}}}] at @s run function mmt_dynaball:weapons/boom_chick/summon_team_a

# Maintain motion
execute as @e[type=minecraft:chicken, tag=bomb_chick] at @s run function mmt_dynaball:weapons/boom_chick/maintain_motion
