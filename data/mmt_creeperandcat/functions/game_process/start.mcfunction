scoreboard players set redcreeper CACconfig 0
#8teams

execute as @a[team=red,tag=creeper] run scoreboard players add redrunner CACconfig 1
execute if score red CACconfig = redcreeper CACconfig run execute as @r[team=red,tag=creeper] run function mmt_creeperandcat:game_process/catchoose
#8teams

tp @a[team=red,tag=creeper] -4950 104 -4966
spawnpoint @a[team=red,tag=creeper] -4966 120 -4966
#tp @a[team=red,tag=cat] ~ ~ ~
#tp @a[team=blue,tag=creeper] ~ ~ ~
#spawnpoint @a[team=blue,tag=creeper] ~ ~ ~
tp @a[team=blue,tag=cat] -4986 104 -4966

scoreboard players set second CACconfig 0
scoreboard players set ticker CACconfig 0
scoreboard players set timemode CACconfig 3
scoreboard players set kill CACconfig 0
execute as @a[tag=player] run scoreboard players set @s CACdeath 0

effect give @a[tag=cat] strength infinite 255 true
effect give @a[tag=creeper] weakness infinite 10 true
effect give @a[tag=creeper] glowing infinite 1 true
#attribute @a[tag=creeper] generic.max_health base set 1
execute as @a[tag=creeper] run attribute @s generic.max_health base set 1

scoreboard players set runnercount CACconfig 0
execute as @a[team=red] run scoreboard players add runnercount CACconfig 1
give @a[tag=cat] splash_potion{custom_potion_effects:[{id:"minecraft:speed",duration:100}],Potion:"shabi"}

scoreboard players set second1 CACconfig 5
function mmt_creeperandcat:game_process/startcountdown
