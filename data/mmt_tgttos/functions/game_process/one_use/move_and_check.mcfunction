#check for uuid
execute store result score cat LoveCause run data get entity @s LoveCause
execute as @a[tag=player] run execute store result score @s LoveCause run data get entity @s UUID
execute as @a[tag=player] run execute if score @s LoveCause = cat LoveCause run scoreboard players set @s finish_count 1
effect give @s invisibility infinite 1 true
execute as @a[scores={finish_count=1}] run gamemode spectator @s
tp @s ~ ~-99 ~

kill @s