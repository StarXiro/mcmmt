
scoreboard players set axis core_utils_get_ground 3
scoreboard players operation candidate core_utils_get_ground = temp2 core_utils_get_ground
execute if score dz core_utils_get_ground matches ..-1 run scoreboard players set axis core_utils_get_ground -3

execute if score candidate core_utils_get_ground < bound core_utils_get_ground run scoreboard players set axis core_utils_get_ground 0
execute if score candidate core_utils_get_ground < bound core_utils_get_ground run scoreboard players set candidate core_utils_get_ground 0
