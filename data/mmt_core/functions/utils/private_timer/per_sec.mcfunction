
execute if score second core_utils_timer matches ..-1 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score second core_utils_timer matches 0 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~
execute if score status core_utils_timer matches 2 run scoreboard players add second core_utils_timer 1
scoreboard players operation tick core_utils_display_timer = tick core_utils_timer
