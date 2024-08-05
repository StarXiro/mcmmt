
# from [low, up]
# to [low, up]

$data modify storage mcmmt:core_utils linear_map.temp set value $(from)
execute store result score from_upper core_utils_linear_map run data get storage mcmmt:core_utils linear_map.temp[1]
execute store result score from_lower core_utils_linear_map run data get storage mcmmt:core_utils linear_map.temp[0]
$data modify storage mcmmt:core_utils linear_map.temp set value $(to)
execute store result score to_upper core_utils_linear_map run data get storage mcmmt:core_utils linear_map.temp[1]
execute store result score to_lower core_utils_linear_map run data get storage mcmmt:core_utils linear_map.temp[0]
