schedule function mmt_skybattle:border/playerpos 1s

execute as @a[tag=player,gamemode=survival] run execute store result score @s SKBposy run data get entity @s Pos[1]
execute as @a[tag=player,gamemode=survival] run execute store result score @s SKBposx run data get entity @s Pos[0]
execute as @a[tag=player,gamemode=survival] run execute store result score @s SKBposz run data get entity @s Pos[2]
execute as @a[tag=player,gamemode=survival] run scoreboard players add @s SKBposz 5000