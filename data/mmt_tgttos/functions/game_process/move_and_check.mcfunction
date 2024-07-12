#check for uuid
execute store result score cat LoveCause run data get entity @s LoveCause
execute as @a[tag=player] run execute store result score @s LoveCause run data get entity @s UUID
execute as @a[tag=player] run execute if score @s LoveCause = cat LoveCause run say 1
kill @s