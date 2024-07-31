
function mmt_core:utils/private_timer/snowball_check
execute if score status core_utils_timer matches 2 run scoreboard players add tick core_utils_timer 1
scoreboard players operation tick core_utils_display_timer = tick core_utils_timer
