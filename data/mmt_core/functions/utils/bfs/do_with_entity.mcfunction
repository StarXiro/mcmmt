
# start from the pos of executer

execute store result score origin_x core_utils_search run data get entity @s Pos[0]
execute store result score origin_y core_utils_search run data get entity @s Pos[1]
execute store result score origin_z core_utils_search run data get entity @s Pos[2]

scoreboard players set steps core_utils_search 0
scoreboard players set depth core_utils_search 0

execute positioned ~ ~ ~ summon minecraft:marker run function mmt_core:utils/bfs/private/bfs_entry
