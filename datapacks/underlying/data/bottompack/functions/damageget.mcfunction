#受伤来源检测
tag @s add hurtby
execute on attacker run tag @s add hurting
scoreboard players operation @s hurtby = @a[tag=hurting] id
tag @s remove hurtby
tag @a[tag=hurting] remove hurting 
advancement revoke @s only bottompack:hurtby