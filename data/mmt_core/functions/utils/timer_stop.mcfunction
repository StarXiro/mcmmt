
# timer status manage
execute if score status core_utils_timer matches 1 run function mmt_core:utils/private_timer/reset

execute if score status core_utils_timer matches 2 run scoreboard objectives modify core_utils_display_timer displayname {"type": "translatable", "translate": "计时器-[%s]", "with": [{"text": "暂停", "color": "red"}]}
execute if score status core_utils_timer matches 2 run scoreboard players set status core_utils_timer 1

execute if score status core_utils_timer matches 1.. run schedule clear mmt_core:utils/private_timer/per_tick

