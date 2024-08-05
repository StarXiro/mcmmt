
execute positioned ~ ~ ~ if entity @e[type=minecraft:marker, distance=..0.2, tag=cu_bfs_ptr, limit=1] run return fail

summon minecraft:marker ~ ~ ~ {Tags:["cu_bfs_ptr"]}
