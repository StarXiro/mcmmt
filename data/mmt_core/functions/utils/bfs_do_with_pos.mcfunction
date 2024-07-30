
# {x:0, y:0, z:0}

$scoreboard players set origin_x core_utils_search $(x)
$scoreboard players set origin_y core_utils_search $(y)
$scoreboard players set origin_z core_utils_search $(z)

scoreboard players set steps core_utils_search 0

$summon minecraft:armor_stand $(x) $(y) $(z) {Marker: true, NoGravity: true, Tags:["cu_bfs_start", "cu_bfs_ptr"]}

execute as @e[type=armor_stand, tag=cu_bfs_start, limit=1] at @s run function mmt_core:utils/private_bfs/bfs_entry
