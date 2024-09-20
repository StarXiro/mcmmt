schedule function mmt_skybattle:deathmessage/trigger 1t
execute as @a[tag=player] run execute if score @s SKBdeath matches 1 run gamemode spectator @s
execute as @a[tag=player] run execute if score @s SKBdeath > 0 SKBconfig run execute on attacker run scoreboard players set ifkilled SKBkillid 1
execute if score ifkilled SKBkillid matches 0 run function mmt_skybattle:deathmessage/deathmessage_void

scoreboard players set @a SKBdeath 0
scoreboard players set ifkilled SKBkillid 0