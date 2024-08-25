# map 2 - The_cave

#kill
kill @e[type=ocelot]

#map reload
data modify storage mcmmt:tgttos scoreboard.map_name set value "The cave"

#item supply
item replace entity @a[tag=tgttos] armor.chest with elytra
item replace entity @a[tag=tgttos] hotbar.8 with cod 64

#cat summon
execute as @a[tag=tgttos] run summon ocelot -7926 -25 -8066 {Trusting:1b,Age:10}
spreadplayers -7926 -8066 2 6 under -25 false @e[type=ocelot]

#tp
tp @a -8016 37 -7948

#log
execute if score logon core_setting matches 1 run tellraw @a {"text":"TGTTOS MAP#2 The cave 重置完成喵"}
