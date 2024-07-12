team join red @a
tp @a[team=red] -4988 120 -4966
tp @a[team=blue] -4988 120 -4966
##need change
tag @a[tag=CAC] add creeper
tag @a[tag=cat] remove cat
scoreboard players set second CACconfig 0
scoreboard players set ticker CACconfig 0
scoreboard players set @a CACkill 0
execute as @a run attribute @s generic.max_health base set 20
effect clear @a
effect give @a instant_health 2 10 false
effect give @a saturation infinite 1 true

setblock -4992 121 -4968 air
setblock -4992 121 -4967 air
setblock -4992 121 -4966 air

fill -4985 105 -4969 -4985 105 -4965 red_stained_glass
fill -4986 105 -4964 -4988 105 -4964 red_stained_glass
fill -4986 105 -4970 -4988 105 -4970 red_stained_glass

fill -4953 105 -4969 -4953 105 -4965 red_stained_glass
fill -4950 105 -4964 -4952 105 -4964 red_stained_glass
fill -4950 105 -4970 -4952 105 -4970 red_stained_glass

function mmt_creeperandcat:game_process/catbuttoncheck
