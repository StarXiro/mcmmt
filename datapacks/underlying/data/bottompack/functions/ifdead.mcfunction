execute as @a[scores={alive=1..},tag=player] run tag @s add dead
execute as @a[scores={alive=1..}] run scoreboard players set @s alive 0
