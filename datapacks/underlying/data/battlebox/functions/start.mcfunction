#timer mod -2时为开始阶段
scoreboard players set countdown timer 1219
scoreboard players set timemode timer -4
effect clear @a[tag=bb]
execute as @a[tag=player] at @s run playsound minecraft:music.battlebox ambient @s

