execute as @a[tag=player] run execute if score @s SKBdeath matches 1 run tellraw @a [{"text":""},{"selector":"@s"},{"text":"失足坠落.."}]
