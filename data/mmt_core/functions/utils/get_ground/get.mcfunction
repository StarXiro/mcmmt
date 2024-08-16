
# with entity arrow

execute store result score temp core_utils_get_ground run data get entity @s inGround 1.0
execute if score temp core_utils_get_ground matches 0 run return fail

# reset
scoreboard players set candidate core_utils_get_ground 0
scoreboard players set offset core_utils_get_ground 1
scoreboard players set pos core_utils_get_ground 0
scoreboard players set axis core_utils_get_ground 0

# get delta
# x
execute store result score dx core_utils_get_ground run data get entity @s Pos[0] 1000.0
execute store result score temp core_utils_get_ground run data get entity @s Pos[0] 1
scoreboard players operation temp core_utils_get_ground *= 1000 core_utils_get_ground
scoreboard players add temp core_utils_get_ground 500
scoreboard players operation dx core_utils_get_ground -= temp core_utils_get_ground
# y
execute store result score dy core_utils_get_ground run data get entity @s Pos[1] 1000.0
execute store result score temp core_utils_get_ground run data get entity @s Pos[1] 1
scoreboard players operation temp core_utils_get_ground *= 1000 core_utils_get_ground
scoreboard players add temp core_utils_get_ground 500
scoreboard players operation dy core_utils_get_ground -= temp core_utils_get_ground
# z
execute store result score dz core_utils_get_ground run data get entity @s Pos[2] 1000.0
execute store result score temp core_utils_get_ground run data get entity @s Pos[2] 1
scoreboard players operation temp core_utils_get_ground *= 1000 core_utils_get_ground
scoreboard players add temp core_utils_get_ground 500
scoreboard players operation dz core_utils_get_ground -= temp core_utils_get_ground

# get direction
execute if score dx core_utils_get_ground matches 1.. run scoreboard players set ix core_utils_get_ground 1
execute if score dx core_utils_get_ground matches ..-1 run scoreboard players set ix core_utils_get_ground -1
execute if score dz core_utils_get_ground matches 1.. run scoreboard players set iz core_utils_get_ground 1
execute if score dz core_utils_get_ground matches ..-1 run scoreboard players set iz core_utils_get_ground -1

# save
scoreboard players operation sx core_utils_get_ground = dx core_utils_get_ground
scoreboard players operation sz core_utils_get_ground = dz core_utils_get_ground

# select
# x
execute if score dx core_utils_get_ground matches 1.. if block ~1 ~ ~ #mmt_core:all_air run scoreboard players set dx core_utils_get_ground 0
execute if score dx core_utils_get_ground matches ..-1 if block ~-1 ~ ~ #mmt_core:all_air run scoreboard players set dx core_utils_get_ground 0
# y
execute if score dy core_utils_get_ground matches 1.. if block ~ ~1 ~ #mmt_core:all_air run scoreboard players set dy core_utils_get_ground 0
execute if score dy core_utils_get_ground matches ..-1 if block ~ ~-1 ~ #mmt_core:all_air run scoreboard players set dy core_utils_get_ground 0
# z
execute if score dz core_utils_get_ground matches 1.. if block ~ ~ ~1 #mmt_core:all_air run scoreboard players set dz core_utils_get_ground 0
execute if score dz core_utils_get_ground matches ..-1 if block ~ ~ ~-1 #mmt_core:all_air run scoreboard players set dz core_utils_get_ground 0

execute if score dx core_utils_get_ground matches 0 if score dz core_utils_get_ground matches 0 run return run function mmt_core:utils/get_ground/private/all_zero_check

function mmt_core:utils/get_ground/private/xz
