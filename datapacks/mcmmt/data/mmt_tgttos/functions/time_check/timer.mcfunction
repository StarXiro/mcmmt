#计时器
execute if score countdown tgttos matches 0.. run scoreboard players remove countdown tgttos 1
scoreboard players operation @e[name="minute"] tgttos = countdown tgttos
scoreboard players add @e[name="minute"] tgttos 1
scoreboard players operation @e[name="minute"] tgttos /= secs config
scoreboard players operation @e[name="second"] tgttos = countdown tgttos
scoreboard players add @e[name="second"] tgttos 1
scoreboard players operation @e[name="second"] tgttos %= secs config
scoreboard players operation @e[name="second"] tgttos /= secs2 config
#execute if score countdown tgttos matches 18 run scoreboard players set countdown tgttos -1

