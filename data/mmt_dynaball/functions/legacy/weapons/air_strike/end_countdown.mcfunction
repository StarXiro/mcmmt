
summon minecraft:tnt ~ ~40 ~ {Tags:["touch_bomb"], fuse:100, Motion:[0.0d, -4.0d, 0.0d]}
scoreboard players reset @s dnb_air_strike
tag @s remove air_strike_countdown
kill @s
