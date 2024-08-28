
execute on passengers as @s store result score temp2 dnb_system run data get entity @s data.origin 1.0

execute as @a[tag=dnb_player] at @s if score @s core_pid = temp2 dnb_system run playsound entity.arrow.hit_player ambient @s ~ ~ ~

execute as @a[tag=dnb_player, tag=!dnb_stuck, distance=..1.5, limit=1] at @s run function mmt_dynaball:tnt_proj/update_dmg

execute on passengers as @s run kill @s
kill @s
