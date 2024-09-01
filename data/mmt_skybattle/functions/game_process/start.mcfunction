execute as @a[tag=player] at @s run setblock ~1 ~ ~ air
execute as @a[tag=player] at @s run setblock ~-1 ~ ~ air
execute as @a[tag=player] at @s run setblock ~ ~ ~-1 air
execute as @a[tag=player] at @s run setblock ~ ~ ~1 air
execute as @a[tag=player] at @s run setblock ~ ~2 ~ air

scoreboard players set timemode SKBconfig 2
scoreboard players set minute SKBconfig 5
scoreboard players set second SKBconfig 0
scoreboard players set second1 SKBconfig 300
scoreboard players set borderx SKBconfig 80
scoreboard players set border SKBconfig 80
scoreboard players set tick SKBconfig 0

function mmt_skybattle:game_process/ingame
function mmt_skybattle:deathmessage/trigger
function mmt_skybattle:game_process/playerpos