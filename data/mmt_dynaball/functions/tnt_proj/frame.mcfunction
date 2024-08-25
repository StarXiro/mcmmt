# freeze
execute as @e[type=minecraft:tnt, tag=dnb_tnt_proj, tag=dnb_tnt_freeze] at @s if function mmt_dynaball:tnt_proj/pred run function mmt_dynaball:tnt_proj/detach
# on ground
execute as @e[type=minecraft:tnt, tag=dnb_tnt_proj, tag=dnb_tnt_inactive, nbt={OnGround:1b}] at @s run function mmt_dynaball:tnt_proj/activate
# end_of_life
execute as @e[type=minecraft:tnt, tag=dnb_tnt_proj, tag=dnb_tnt_active, nbt={fuse:1s}] at @s run function mmt_dynaball:tnt_proj/end_of_life

# stuck
execute as @e[type=minecraft:tnt, tag=dnb_tnt_proj, tag=dnb_tnt_inactive, tag=weapon_a] at @s if entity @a[tag=dnb_player, tag=team_b, tag=!dnb_stuck, distance=..1.5, limit=1] run function mmt_dynaball:tnt_proj/stuck_player

execute as @e[type=minecraft:tnt, tag=dnb_tnt_proj, tag=dnb_tnt_inactive, tag=weapon_b] at @s if entity @a[tag=dnb_player, tag=team_a, tag=!dnb_stuck, distance=..1.5, limit=1] run function mmt_dynaball:tnt_proj/stuck_player

# next
schedule function mmt_dynaball:tnt_proj/frame 1t replace
