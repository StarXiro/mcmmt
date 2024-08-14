
# pos1
# pos2

data modify storage mcmmt:core_utils make_match.match set value {teams:[]}

$data modify storage mcmmt:core_utils make_match.temp set from storage mcmmt:core_utils make_match.make_round[$(pos1)]

execute store result score temp core_utils_make_match run data get storage mcmmt:core_utils make_match.temp 1.0
execute if score temp core_utils_make_match matches -1 run data modify storage mcmmt:core_utils make_match.match.empty_round set value 1b
execute unless score temp core_utils_make_match matches -1 run function mmt_core:utils/make_match/private/append_origin

$data modify storage mcmmt:core_utils make_match.temp set from storage mcmmt:core_utils make_match.make_round[$(pos2)]

execute store result score temp core_utils_make_match run data get storage mcmmt:core_utils make_match.temp 1.0
execute if score temp core_utils_make_match matches -1 run data modify storage mcmmt:core_utils make_match.match.empty_round set value 1b
execute unless score temp core_utils_make_match matches -1 run function mmt_core:utils/make_match/private/append_origin
