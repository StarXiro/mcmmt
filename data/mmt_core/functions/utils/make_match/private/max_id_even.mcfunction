
scoreboard players operation temp core_utils_make_match = length core_utils_make_match
scoreboard players remove temp core_utils_make_match 1
execute store result storage mcmmt:core_utils make_match.max_id int 1.0 run scoreboard players get temp core_utils_make_match
