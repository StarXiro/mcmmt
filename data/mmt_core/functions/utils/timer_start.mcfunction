
execute if score status core_utils_timer matches 0 run scoreboard players operation tick core_utils_timer = offset core_utils_timer

scoreboard objectives modify core_utils_display_timer displayname {"type": "translatable", "translate": "计时器-[%s]", "with": [{"text": "进行", "color": "green"}]}
function mmt_core:utils/private_timer/per_tick

scoreboard players set status core_utils_timer 2
