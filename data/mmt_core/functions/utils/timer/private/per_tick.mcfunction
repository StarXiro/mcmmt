
scoreboard players add tick core_utils_timer 1
scoreboard players operation tick core_utils_display_timer = tick core_utils_timer
scoreboard players operation second core_utils_timer = tick core_utils_timer
scoreboard players operation second core_utils_timer /= 20 core_datatemp
execute if score second core_utils_timer > last_sec core_utils_timer run function mmt_core:utils/timer/private/per_sec
scoreboard players operation last_sec core_utils_timer = second core_utils_timer

schedule function mmt_core:utils/timer/private/per_tick 1t replace
