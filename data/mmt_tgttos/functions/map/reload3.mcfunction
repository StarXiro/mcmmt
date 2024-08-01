# map 3 - My Go!!

#kill
kill @e[type=ocelot]

#map reload
scoreboard players set @e[name="My Go!!"] tgttos_config 1

#item supply
item replace entity @a[tag=tgttos] hotbar.8 with cod 64

#cat summon
#execute as @a[tag=tgttos] run summon ocelot 9067 75 8997 {Trusting:1b,Age:10}

#tp
#tp @a 9000 101 9000

#log
execute if score logon core_setting matches 1 run tellraw @a {"text":"TGTTOS MAP#3 My Go!! 重置完成喵"}
