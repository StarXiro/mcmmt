#游戏检测
#execute if score @e[name="tgttos",limit=1] config matches 2 run function tgttos:load
#execute if score @e[name="tgttos",limit=1] config matches 10 run function tgttos:main

#initialize
tp @a 9000 101 9000
function mmt_tgttos:game_process/reload0
#scoreboard players set @e[name="tgttos",limit=1] config 10
scoreboard players add @e[name="game_count"] config 1
scoreboard players add @e[name="round_count"] config 1
tag @a[tag=player] add tgttos
clear @a[tag=tgttos] 
gamemode adventure @a[tag=player]
function mmt_tgttos:time_check/timer

#item supply
item replace entity @a[tag=tgttos] hotbar.0 with shears{display:{Name:'{"text":"喵喵剪","color":"gray","italic":false}'},CanDestroy:["#mmt_core:survival_blocks"],"Unbreakable":1}
item replace entity @a[tag=tgttos,team=red] hotbar.1 with red_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"]} 64
item replace entity @a[tag=tgttos,team=orange] hotbar.1 with orange_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"]} 64
item replace entity @a[tag=tgttos,team=yellow] hotbar.1 with yellow_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"]} 64
item replace entity @a[tag=tgttos,team=green] hotbar.1 with green_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"]} 64
item replace entity @a[tag=tgttos,team=lime] hotbar.1 with lime_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"]} 64
item replace entity @a[tag=tgttos,team=aqua] hotbar.1 with cyan_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"]} 64
item replace entity @a[tag=tgttos,team=blue] hotbar.1 with blue_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"]} 64
item replace entity @a[tag=tgttos,team=pink] hotbar.1 with pink_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"]} 64

#intro
function mmt_tgttos:game_process/intro