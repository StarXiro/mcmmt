
# setup core.utils.uuid_match
data modify storage mcmmt:core_utils uuid_match set value {base: [I;0,0,0,0], UUID: [I;0,0,0,0]}

# utils.uuid_match
scoreboard objectives add core_utils_uuid_match dummy
scoreboard players set uuid1 core_utils_uuid_match 0
scoreboard players set uuid2 core_utils_uuid_match 0
scoreboard players set uuid3 core_utils_uuid_match 0
scoreboard players set uuid4 core_utils_uuid_match 0
scoreboard players set to_match core_utils_uuid_match 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.uuid_match
