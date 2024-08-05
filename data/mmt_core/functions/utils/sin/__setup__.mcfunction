
# setup core.utils.sin
data modify storage mcmmt:core_utils sincos set value {result: 0.0f, value: 0.0d}

# utils.sin & utils.cos
scoreboard objectives add core_utils_sincos dummy
scoreboard players set input core_utils_sincos 0
scoreboard players set result core_utils_sincos 0
scoreboard players set scaler core_utils_sincos 1000000
scoreboard players set neg_cons core_utils_sincos -1
scoreboard players set processed core_utils_sincos 0
scoreboard players set rev_flg core_utils_sincos 0
scoreboard players set ant_flg core_utils_sincos 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.sincos
