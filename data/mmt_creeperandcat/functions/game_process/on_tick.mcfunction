schedule function mmt_creeperandcat:game_process/on_tick 1t
setblock -4985 105 -4969 air
setblock -4985 105 -4965 air
setblock -4985 105 -4968 air
setblock -4985 105 -4967 air
setblock -4985 105 -4966 air
setblock -4986 105 -4964 air
setblock -4988 105 -4964 air
setblock -4987 105 -4964 air
setblock -4986 105 -4970 air
setblock -4988 105 -4970 air
setblock -4987 105 -4970 air

setblock -4953 105 -4969 air
setblock -4953 105 -4965 air
setblock -4953 105 -4968 air
setblock -4953 105 -4967 air
setblock -4953 105 -4966 air

setblock -4950 105 -4964 air
setblock -4952 105 -4964 air
setblock -4951 105 -4964 air
setblock -4950 105 -4970 air
setblock -4952 105 -4970 air
setblock -4951 105 -4970 air
##open the cage
##timer
scoreboard players add ticker CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players add second CACconfig 1
execute if score ticker CACconfig matches 20 run scoreboard players remove ticker CACconfig 20
execute if score ticker CACconfig matches 20 run say 1114
##creeper caught
##finish later

##round end
execute as @a[tag=cat] run execute if score @s CACkill = playercount CACconfig run gamemode spectator @s
execute as @a[tag=cat] run execute if score @s CACkill = playercount CACconfig run schedule clear mmt_creeperandcat:game_process/on_tick
execute as @a[tag=cat] run execute if score @s CACkill = playercount CACconfig run say Round End
execute as @a[tag=cat] run execute if score @s CACkill = playercount CACconfig run scoreboard players set ticker CACconfig 0
execute as @a[tag=cat] run execute if score @s CACkill = playercount CACconfig run scoreboard players set second CACconfig 0
execute as @a[tag=cat] run execute if score @s CACkill = playercount CACconfig run function mmt_creeperandcat:game_process/end

execute if score second CACconfig matches 60 run schedule clear mmt_creeperandcat:game_process/on_tick
execute if score second CACconfig matches 60 run say Round End
execute if score second CACconfig matches 60 run function mmt_creeperandcat:game_process/end
execute if score second CACconfig matches 60 run scoreboard players set ticker CACconfig 0
execute if score second CACconfig matches 60 run scoreboard players set second CACconfig 0

execute as @e[type=ender_pearl] run function mmt_creeperandcat:game_process/pearl