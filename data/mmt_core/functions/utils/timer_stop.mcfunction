
execute if score status core_utils_timer matches 1 run function mmt_core:utils/private_timer/reset
execute if score status core_utils_timer matches 2 run scoreboard players set status core_utils_timer 1
