
# pos

$execute store result score temp2 core_utils_get_ground run data get storage mcmmt:core_utils get_ground.pos[$(pos)] 1.0
scoreboard players operation temp2 core_utils_get_ground += offset core_utils_get_ground
$execute store result storage mcmmt:core_utils get_ground.pos[$(pos)] int 1.0 run scoreboard players get temp2 core_utils_get_ground
