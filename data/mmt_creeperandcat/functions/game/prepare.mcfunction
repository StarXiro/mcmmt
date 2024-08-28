tp @a[tag=player] -4988 120 -4966
##need change
tag @a[tag=player] add creeper
tag @a[tag=cat] remove cat
scoreboard players set second CACconfig 30
scoreboard players set ticker CACconfig 0
scoreboard players set @a CACkill 0
scoreboard players add round CACconfig 1
scoreboard players set 0 CACconfig 0

effect clear @a
effect give @a saturation infinite 1 true
effect give @a weakness infinite 100 true
gamemode adventure @a[tag=CAC]

setblock -4992 121 -4968 air
setblock -4992 121 -4967 air
setblock -4992 121 -4966 air

fill -4985 105 -4969 -4985 105 -4965 red_stained_glass
fill -4986 105 -4964 -4988 105 -4964 red_stained_glass
fill -4986 105 -4970 -4988 105 -4970 red_stained_glass

fill -4953 105 -4969 -4953 105 -4965 red_stained_glass
fill -4950 105 -4964 -4952 105 -4964 red_stained_glass
fill -4950 105 -4970 -4952 105 -4970 red_stained_glass

scoreboard players set second1 CACconfig 20
scoreboard players set kill CACconfig 0
scoreboard players set aqua CACconfig 0
scoreboard players set blue CACconfig 0
scoreboard players set green CACconfig 0
scoreboard players set lime CACconfig 0
scoreboard players set orange CACconfig 0
scoreboard players set pink CACconfig 0
scoreboard players set red CACconfig 0
scoreboard players set yellow CACconfig 0
#8teams

execute as @a[team=aqua] run scoreboard players add aqua CACconfig 1
execute as @a[team=blue] run scoreboard players add blue CACconfig 1
execute as @a[team=green] run scoreboard players add green CACconfig 1
execute as @a[team=lime] run scoreboard players add lime CACconfig 1
execute as @a[team=orange] run scoreboard players add orange CACconfig 1
execute as @a[team=pink] run scoreboard players add pink CACconfig 1
execute as @a[team=red] run scoreboard players add red CACconfig 1
execute as @a[team=yellow] run scoreboard players add yellow CACconfig 1
#8teams

execute if score aqua CACconfig > 0 CACconfig run data modify storage mcmmt:creeperandcat team append value aqua
execute if score blue CACconfig > 0 CACconfig run data modify storage mcmmt:creeperandcat team append value blue
execute if score green CACconfig > 0 CACconfig run data modify storage mcmmt:creeperandcat team append value green
execute if score lime CACconfig > 0 CACconfig run data modify storage mcmmt:creeperandcat team append value lime
execute if score orange CACconfig > 0 CACconfig run data modify storage mcmmt:creeperandcat team append value orange
execute if score pink CACconfig > 0 CACconfig run data modify storage mcmmt:creeperandcat team append value pink
execute if score red CACconfig > 0 CACconfig run data modify storage mcmmt:creeperandcat team append value red
execute if score yellow CACconfig > 0 CACconfig run data modify storage mcmmt:creeperandcat team append value yellow

#make_match
data modify storage mcmmt:creeperandcat make_match.list set from storage mcmmt:creeperandcat team
function mmt_core:utils/make_match/make with storage mcmmt:creeperandcat make_match
data modify storage mcmmt:creeperandcat system.rounds set from storage mcmmt:core_utils make_match.rounds

function mmt_creeperandcat:game/button
function mmt_creeperandcat:game/teamtp with storage mcmmt:creeperandcat

function mmt_creeperandcat:game/precnt