
# start from the pos of executer

execute store result score origin_x core_utils_search run data get entity @s Pos[0]
execute store result score origin_y core_utils_search run data get entity @s Pos[1]
execute store result score origin_z core_utils_search run data get entity @s Pos[2]

scoreboard players set steps core_utils_search 0

summon minecraft:armor_stand ~ ~ ~ {Tags:["cu_bfs_start", "cu_bfs_ptr"], NoGravity: true, Marker: true}

execute as @e[type=armor_stand, tag=cu_bfs_start, limit=1] at @s run function mmt_core:utils/private_bfs/bfs_entry

