schedule function mmt_skybattle:border/borderdmg 1s

scoreboard players operation dis_square SKBconfig = border SKBconfig
scoreboard players operation dis_square SKBconfig *= dis_square SKBconfig

execute as @a run scoreboard players operation @s SKBtempdis = @s SKBposx
execute as @a run scoreboard players operation @s SKBtempdis *= @s SKBtempdis
execute as @a run scoreboard players operation @s SKBdis = @s SKBposz
execute as @a run scoreboard players operation @s SKBdis *= @s SKBdis
execute as @a run scoreboard players operation @s SKBdis += @s SKBtempdis

execute as @a run execute if score @s SKBdis > dis_square SKBconfig run damage @s 2 in_wall