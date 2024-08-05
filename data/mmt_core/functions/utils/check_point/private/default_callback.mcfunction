
# name
# pos

$data modify storage mcmmt:core_utils check_point.vec3_temp set value $(pos)
execute store result score temp core_utils_check_point run data get storage mcmmt:core_utils check_point.vec3_temp[0] 1.0
execute store result score temp2 core_utils_check_point run data get storage mcmmt:core_utils check_point.vec3_temp[1] 1.0
execute store result score temp3 core_utils_check_point run data get storage mcmmt:core_utils check_point.vec3_temp[2] 1.0

$tellraw @a {"type": "translatable", "translate": "%s 到达了检查点 %s (X:%s Y:%s Z:%s)", "with": [{"selector": "@s", "color": "blue"}, {"text": "$(name)", "color": "gold"}, {"score": {"name": "temp", "objective": "core_utils_check_point"}, "color": "green"}, {"score": {"name": "temp2", "objective": "core_utils_check_point"}, "color": "green"}, {"score": {"name": "temp3", "objective": "core_utils_check_point"}, "color": "green"}]}
