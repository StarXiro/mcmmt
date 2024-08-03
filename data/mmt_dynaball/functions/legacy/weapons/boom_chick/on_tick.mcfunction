
# check egg
# team B
execute as @e[type=minecraft:egg, nbt={Item:{tag:{CustomModelData:12}}}] at @s run function mmt_dynaball:weapons/boom_chick/summon_team_b
# team A
execute as @e[type=minecraft:egg, nbt={Item:{tag:{CustomModelData:13}}}] at @s run function mmt_dynaball:weapons/boom_chick/summon_team_a

# Maintain motion
execute as @e[type=minecraft:chicken, tag=bomb_chick] at @s run function mmt_dynaball:weapons/boom_chick/maintain_motion

# Check Bomb
execute as @e[type=minecraft:tnt, tag=chick_bomb, tag=in_air, nbt={OnGround:1b}] at @s run function mmt_dynaball:weapons/boom_chick/launch_bomb
execute as @e[type=minecraft:tnt, tag=chick_bomb_a, tag=in_air] at @s if entity @p[distance=..0.8, tag=player_dynaball, tag=team_b, tag=!dnb_self_explose] run function mmt_dynaball:weapons/boom_chick/attach_team
execute as @e[type=minecraft:tnt, tag=chick_bomb_b, tag=in_air] at @s if entity @p[distance=..0.8, tag=player_dynaball, tag=team_a, tag=!dnb_self_explose] run function mmt_dynaball:weapons/boom_chick/attach_team
