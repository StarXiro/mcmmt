#map#1 cod in the sea
scoreboard players set @e[name="cod in the sea",tag=map] tgttosconfig 1
forceload add 7978 7966 8090 8030
forceload add 8978 8966 9090 9030
clone 7978 72 7966 8090 115 8030 8978 72 8966 
forceload remove 7978 7966 8090 8030
forceload remove 8978 8966 9090 9030
execute if score logon core_setting matches 1 run tellraw @a {"text":"TGTTOS MAP#1 cod in the sea 重置完成喵"}