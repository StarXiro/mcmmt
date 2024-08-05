
function mmt_core:utils/cos/private/cut_2pi

execute if score processed core_utils_sincos matches 0..900 run function mmt_core:utils/cos/private/pre_90
execute if score processed core_utils_sincos matches 901..1800 run function mmt_core:utils/cos/private/pre_180
execute if score processed core_utils_sincos matches 1801..2700 run function mmt_core:utils/cos/private/pre_270
execute if score processed core_utils_sincos matches 2701..3600 run function mmt_core:utils/cos/private/pre_360

execute if score ant_flg core_utils_sincos matches 1 run function mmt_core:utils/sin/private/values/get
execute if score ant_flg core_utils_sincos matches 0 run function mmt_core:utils/cos/private/values/get

execute if score rev_flg core_utils_sincos matches 1 run scoreboard players operation result core_utils_sincos *= neg_cons core_utils_sincos
