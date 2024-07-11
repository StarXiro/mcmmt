# map 1 - cod in the sea

#map reload
scoreboard players set @e[name='codake'] tgttosconfig 1
forceload add 7978 7966 8090 8030
forceload add 8978 8966 9090 9030
clone 7978 72 7966 8090 115 8030 8978 72 8966 
forceload remove 7978 7966 8090 8030
forceload remove 8978 8966 9090 9030

#item supply
item replace entity @a[tag=tgttos] hotbar.0 with shears{display:{Name:'{"text":"喵喵剪","color":"gray","italic":false}'},CanDestroy:["#mmt_core:team_wools"],"Unbreakable":1,HideFlags:28}
item replace entity @a[tag=tgttos,team=red] hotbar.1 with red_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"],HideFlags:28} 64
item replace entity @a[tag=tgttos,team=orange] hotbar.1 with orange_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"],HideFlags:28} 64
item replace entity @a[tag=tgttos,team=yellow] hotbar.1 with yellow_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"],HideFlags:28} 64
item replace entity @a[tag=tgttos,team=green] hotbar.1 with green_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"],HideFlags:28} 64
item replace entity @a[tag=tgttos,team=lime] hotbar.1 with lime_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"],HideFlags:28} 64
item replace entity @a[tag=tgttos,team=aqua] hotbar.1 with cyan_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"],HideFlags:28} 64
item replace entity @a[tag=tgttos,team=blue] hotbar.1 with blue_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"],HideFlags:28} 64
item replace entity @a[tag=tgttos,team=pink] hotbar.1 with pink_wool{CanDestroy:["#mmt_core:team_wools"],CanPlaceOn:["#mmt_core:survival_blocks"],HideFlags:28} 64

#log
execute if score logon core_setting matches 1 run tellraw @a {"text":"TGTTOS MAP#1 codake 重置完成喵"}

#function 
function mmt_tgttos:game_process/one_use/transroundend