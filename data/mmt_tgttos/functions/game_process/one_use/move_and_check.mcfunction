#check for uuid
execute store result score cat LoveCause run data get entity @s LoveCause
execute as @a[tag=player] run execute store result score @s LoveCause run data get entity @s UUID
execute as @a[tag=player] run execute if score @s LoveCause = cat LoveCause run function mmt_tgttos:game_process/one_use/finish_action
effect give @s invisibility infinite 1 true
tp @s ~ ~-99 ~

kill @s