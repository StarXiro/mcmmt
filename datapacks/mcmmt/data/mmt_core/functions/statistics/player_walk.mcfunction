
execute as @a[tag=mmt_track] if score @s stas_last_walk < @s stas_this_walk run function mmt_core:verbs/movement/player_walk
execute as @a[tag=mmt_track] run scoreboard players operation @s stas_last_walk = @s stas_this_walk
