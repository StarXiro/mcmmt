function battlebox:item_chaser
function battlebox:item_killer
function battlebox:protect
execute if score tick2 timer matches -3 run function battlebox:tick2
execute if score countdown timer matches -1 run execute if score timemode timer matches -3..-2 run execute as @a[tag=bb] at @s run playsound minecraft:sound.start ambient @s
execute if score countdown timer matches -1 run execute if score timemode timer matches -3 run scoreboard players set timemode timer -4
execute if score countdown timer matches -1 run execute if score timemode timer matches -2 run function battlebox:start
execute if score countdown timer matches -1 run execute if score timemode timer matches -4 run function battlebox:prepare2
execute if score countdown timer matches -1 run execute if score timemode timer matches -5 run function battlebox:prepare
execute if score countdown timer matches 79 run execute if score timemode timer matches -3..-2 run execute as @a[tag=bb] at @s run playsound minecraft:sound.countdown ambient @s
execute if score countdown timer matches 39 run execute if score timemode timer matches -3..-2 run execute as @a[tag=bb] at @s run playsound minecraft:sound.countdown ambient @s
execute if score countdown timer matches 59 run execute if score timemode timer matches -3..-2 run execute as @a[tag=bb] at @s run playsound minecraft:sound.countdown ambient @s