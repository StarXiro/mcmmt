#data -> scoreboard
execute as @e[type=ocelot] store result score @s finish_check run data get entity @s InLove
execute as @e[type=ocelot,scores={finish_check=1..}] run function mmt_tgttos:game_process/one_use/move_and_check
execute as @a[scores={finish_count=1}] run gamemode spectator @s
