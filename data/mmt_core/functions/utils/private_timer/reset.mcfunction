
scoreboard players remove stamp_index core_utils_timer 1
scoreboard players set status core_utils_timer 0
scoreboard players operation tick core_utils_timer = offset core_utils_timer
scoreboard players operation second core_utils_timer = offset core_utils_timer
scoreboard players operation second core_utils_timer /= 20 core_datatemp
function mmt_core:utils/private_timer/recrusive
scoreboard players set stamp_index core_utils_timer 1

scoreboard players operation tick core_utils_display_timer = tick core_utils_timer
scoreboard players operation second core_utils_display_timer = second core_utils_timer
scoreboard players set last_sec core_utils_timer -2147483648

scoreboard objectives modify core_utils_display_timer displayname {"type": "translatable", "translate": "计时器-[%s]", "with": [{"text": "停止", "color": "gray"}]}

