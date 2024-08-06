execute on attacker run scoreboard players set @s CACkillid 1
kill @s
tellraw @a [{"text":""},{"selector":"@s"},{"text":"被"},{"selector":"@a[scores={CACkillid=1},tag=player]"},{"text":"抓到了"}]

execute on attacker run scoreboard players set @s CACkillid 0