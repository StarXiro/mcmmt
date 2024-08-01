# map 2 - noname

#kill
kill @e[type=ocelot]

#map reload
scoreboard players set @e[name="noname"] tgttos_config 1

#item supply
item replace entity @a[tag=tgttos] armor.chest with elytra 
item replace entity @a[tag=tgttos] hotbar.8 with cod 64

#cat summon
execute as @a[tag=tgttos] run summon ocelot -7926 -25 -8066 {Trusting:1b,Age:10}

#tp
tp @a -8016 37 -7948

#log
execute if score logon core_setting matches 1 run tellraw @a {"text":"TGTTOS MAP#2 noname 重置完成喵"}
