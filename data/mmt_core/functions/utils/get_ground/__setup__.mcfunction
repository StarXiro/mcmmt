
data modify storage mcmmt:core_utils get_ground set value {pos: [0, 0, 0], map: {x: 0, y: 0, z: 0}, macro_bag: {pos: 0}, xie: {x: 0, z: 0}}

scoreboard objectives add core_utils_get_ground dummy
scoreboard players set temp core_utils_get_ground 0
scoreboard players set temp2 core_utils_get_ground 0
scoreboard players set 1000 core_utils_get_ground 1000
scoreboard players set -1 core_utils_get_ground -1
scoreboard players set dx core_utils_get_ground 0
scoreboard players set dy core_utils_get_ground 0
scoreboard players set dz core_utils_get_ground 0
scoreboard players set axis core_utils_get_ground 0
scoreboard players set pos core_utils_get_ground 0
scoreboard players set offset core_utils_get_ground 0
scoreboard players set candidate core_utils_get_ground 0
scoreboard players set bound core_utils_get_ground 445
scoreboard players set ix core_utils_get_ground 0
scoreboard players set iz core_utils_get_ground 0
scoreboard players set sx core_utils_get_ground 0
scoreboard players set sz core_utils_get_ground 0
