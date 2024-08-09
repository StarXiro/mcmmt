#countdown /tick
execute if score countdown tgttos matches 0.. run scoreboard players remove countdown tgttos 1

#minute
scoreboard players operation minute tgttos = countdown tgttos
scoreboard players add minute tgttos 1
scoreboard players operation minute tgttos /= secs tgttos

#second
scoreboard players operation second tgttos = countdown tgttos
scoreboard players add second tgttos 1
scoreboard players operation second tgttos %= secs tgttos
scoreboard players operation second tgttos /= secs2 tgttos
execute if score countdown tgttos matches 18 run scoreboard players set countdown tgttos -1

