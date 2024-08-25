
execute on passengers as @s store result score temp dnb_system run data get entity @s data.origin 1.0
execute as @a[tag=dnb_player, distance=..3] run scoreboard players operation @s dnb_dmg_source = temp dnb_system
execute as @a[tag=dnb_player, distance=..3] run scoreboard players set @s dnb_dmg_valid 10

# clear marker
execute on passengers as @s run kill @s
