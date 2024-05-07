execute as @a[tag=tgttos,x=8958,z=8936,dx=150,dz=130,y=20,dy=40] run function tgttos:death
execute unless block 9000 101 9000 air run setblock 9000 101 9000 air
function tgttos:item_chaser
function tgttos:item_killer
execute if score tick2 timer matches -3 run function tgttos:tick2
execute if score countdown timer matches -1 run execute if score timemode timer matches -3..-2 run execute as @a[tag=tgttos] at @s run playsound minecraft:sound.start ambient @s
execute if score countdown timer matches -1 run execute if score timemode timer matches -3 run scoreboard players set timemode timer -2
execute if score countdown timer matches -1 run execute if score timemode timer matches -2 run function tgttos:start
execute if score countdown timer matches -1 run execute if score timemode timer matches -4 run function tgttos:prepare
execute if score timemode timer matches -3..-2 run function tgttos:protect
execute if score countdown timer matches 79 run execute if score timemode timer matches -3..-2 run execute as @a[tag=tgttos] at @s run playsound minecraft:sound.countdown ambient @s
execute if score countdown timer matches 39 run execute if score timemode timer matches -3..-2 run execute as @a[tag=tgttos] at @s run playsound minecraft:sound.countdown ambient @s
execute if score countdown timer matches 59 run execute if score timemode timer matches -3..-2 run execute as @a[tag=tgttos] at @s run playsound minecraft:sound.countdown ambient @s