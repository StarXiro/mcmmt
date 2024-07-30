
execute positioned ~ ~ ~ if entity @e[type=armor_stand, distance=..0.2, tag=cu_bfs_ptr, limit=1] run return fail

execute if score visible_ptr core_utils_search matches 1 run summon armor_stand ~ ~ ~ {Marker: true, NoGravity: true, Tags:["cu_bfs_ptr", "cu_bfs_temp"]}
execute if score visible_ptr core_utils_search matches 0 run summon armor_stand ~ ~ ~ {Marker: true, NoGravity: true, Invisible:true, Tags:["cu_bfs_ptr", "cu_bfs_temp"]}
