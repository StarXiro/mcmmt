
scoreboard players set axis core_utils_get_ground 2
scoreboard players operation candidate core_utils_get_ground = temp core_utils_get_ground
execute if score dy core_utils_get_ground matches ..-1 run scoreboard players set axis core_utils_get_ground -2

execute if score candidate core_utils_get_ground < bound core_utils_get_ground run scoreboard players set axis core_utils_get_ground 0
execute if score candidate core_utils_get_ground < bound core_utils_get_ground run scoreboard players set candidate core_utils_get_ground 0