execute unless score current_game core_setting matches 4 run return fail
execute on attacker run scoreboard players set @s SKBkillid 1
gamemode spectator @s
tellraw @a [{"text":""},{"selector":"@s"},{"text":"被"},{"selector":"@a[scores={SKBkillid=1},tag=player]"},{"text":"击杀"}]

execute on attacker run scoreboard players set @s SKBkillid 0
advancement revoke @s only mmt_skybattle:killby