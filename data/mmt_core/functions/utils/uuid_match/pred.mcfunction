
# position 1
execute store result score to_match core_utils_uuid_match run data get entity @s UUID[0] 1
execute unless score uuid1 core_utils_uuid_match = to_match core_utils_uuid_match run return fail
# position 2
execute store result score to_match core_utils_uuid_match run data get entity @s UUID[1] 1
execute unless score uuid2 core_utils_uuid_match = to_match core_utils_uuid_match run return fail
# position 3
execute store result score to_match core_utils_uuid_match run data get entity @s UUID[2] 1
execute unless score uuid3 core_utils_uuid_match = to_match core_utils_uuid_match run return fail
# position 4
execute store result score to_match core_utils_uuid_match run data get entity @s UUID[3] 1
execute unless score uuid4 core_utils_uuid_match = to_match core_utils_uuid_match run return fail
return 1
