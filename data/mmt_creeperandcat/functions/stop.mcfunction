tag @a[tag=creeper] remove creeper
tag @a[tag=cat] remove cat
tag @a[tag=CAC] remove CAC
execute as @a[tag=creeper] run attribute @s generic.max_health base set 20
schedule clear mmt_creeperandcat:game_process/catbuttoncheck
schedule clear mmt_creeperandcat:game_process/on_tick
schedule clear mmt_creeperandcat:game_process/end
schedule clear mmt_creeperandcat:game_process/startcountdown

effect clear @a weakness
effect clear @a glowing
effect clear @a strength

execute as @a run attribute @s generic.max_health base set 20