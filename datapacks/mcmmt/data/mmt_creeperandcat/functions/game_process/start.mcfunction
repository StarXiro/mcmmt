tp @a[team=red,tag=creeper] -4950 104 -4966
spawnpoint @a[team=red,tag=creeper] -4966 120 -4966
#tp @a[team=red,tag=cat] ~ ~ ~
#tp @a[team=blue,tag=creeper] ~ ~ ~
#spawnpoint @a[team=blue,tag=creeper] ~ ~ ~
tp @a[team=blue,tag=cat] -4986 104 -4966

scoreboard players set second CACconfig 0
scoreboard players set ticker CACconfig 0

effect give @a[tag=cat] strength infinite 255 true
effect give @a[tag=creeper] glowing infinite
#attribute @a[tag=creeper] generic.max_health base set 1
execute as @a[tag=creeper] run attribute @s generic.max_health base set 1

give @a[tag=creeper] ender_pearl 1
give @a[tag=cat] splash_potion{custom_potion_effects:[{id:"minecraft:speed",duration:100}],Potion:"shabi"}

function mmt_creeperandcat:game_process/startcountdown
