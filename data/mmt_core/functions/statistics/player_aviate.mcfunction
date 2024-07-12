
execute as @a[tag=mmt_track] if score @s stas_last_elytra < @s stas_this_elytra run function mmt_core:verbs/movement/player_using_elytra
execute as @a[tag=mmt_track] run scoreboard players operation @s stas_last_elytra = @s stas_this_elytra
