
execute as @a[tag=mmt_track] if score @s stas_last_death < @s stas_this_death run function mmt_core:verbs/player_died
execute as @a[tag=mmt_track] run scoreboard players operation @s stas_last_death = @s stas_this_death
