#timer mod -2时为开始阶段
scoreboard players set countdown timer 2399
scoreboard players set timemode timer -4
effect clear @a[tag=tgttos]
execute as @a[tag=player] at @s run playsound minecraft:music.tgttos ambient @s
fill 8995 105 9013 9007 97 8983 air replace barrier
effect give @a[tag=tgttos] saturation infinite 255 true
