
scoreboard players set iter core_utils_range 0
scoreboard players set lb core_utils_range 0
execute store result score rb core_utils_range run data get storage mcmmt:core_utils range.args[0] 1.0
scoreboard players set step core_utils_range 1
