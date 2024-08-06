
execute store result score lb core_utils_range run data get storage mcmmt:core_utils range.args[0] 1.0
execute store result score rb core_utils_range run data get storage mcmmt:core_utils range.args[1] 1.0
scoreboard players operation iter core_utils_range = lb core_utils_range
scoreboard players set step core_utils_range 1
