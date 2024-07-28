
# UUID [int] 表示UUID的四个int列表

$data modify storage mcmmt:core_utils uuid_match.base set value $(UUID)
execute store result score uuid1 core_utils_uuid_match run data get storage mcmmt:core_utils uuid_match.base[0]
execute store result score uuid2 core_utils_uuid_match run data get storage mcmmt:core_utils uuid_match.base[1]
execute store result score uuid3 core_utils_uuid_match run data get storage mcmmt:core_utils uuid_match.base[2]
execute store result score uuid4 core_utils_uuid_match run data get storage mcmmt:core_utils uuid_match.base[3]
