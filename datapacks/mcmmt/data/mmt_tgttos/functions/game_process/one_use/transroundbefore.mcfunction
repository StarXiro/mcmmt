#prepare to round_start  //  code for round_start
scoreboard players set countdown tgttos 2419
effect clear @a[tag=tgttos]
execute as @a[tag=player] at @s run playsound minecraft:music.tgttos ambient @s
fill 8995 105 9013 9007 97 8983 air replace barrier
effect give @a[tag=tgttos] saturation infinite 255 true

#process change
scoreboard players set gameprocess tgttos 2



