
# degree 角度值
$data modify storage mcmmt:core_utils sincos.value set value $(degree)
execute store result score input core_utils_sincos run data get storage mcmmt:core_utils sincos.value 10.0
function mmt_core:utils/sin/private/sin_enter
