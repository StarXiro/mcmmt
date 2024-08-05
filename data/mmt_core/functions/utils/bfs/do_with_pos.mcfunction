
# {x:0, y:0, z:0}

$scoreboard players set origin_x core_utils_search $(x)
$scoreboard players set origin_y core_utils_search $(y)
$scoreboard players set origin_z core_utils_search $(z)

scoreboard players set steps core_utils_search 0
scoreboard players set depth core_utils_search 0
scoreboard players set end_sign core_utils_search 0

$execute positioned $(x) $(y) $(z) summon minecraft:marker run function mmt_core:utils/bfs/private/bfs_entry
