#data -> scoreboard
execute as @e[type=ocelot] store result score @s tgttos_finish_check run data get entity @s InLove
execute as @e[type=ocelot,scores={tgttos_finish_check=1..}] run function mmt_tgttos:game_process/one_use/ocelot_do