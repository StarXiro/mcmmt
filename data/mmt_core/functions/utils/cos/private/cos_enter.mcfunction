
# cos(-x) = cos x
# INPUT_SCALE = 10
# RESULT_SCALE = 1e6

scoreboard players operation processed core_utils_sincos = input core_utils_sincos
execute if score input core_utils_sincos matches ..-1 run scoreboard players operation processed core_utils_sincos *= neg_cons core_utils_sincos
function mmt_core:utils/cos/private/cos_entrance
execute store result storage mcmmt:core_utils sincos.result double 0.000001 run scoreboard players get result core_utils_sincos
