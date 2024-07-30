#info
execute if score logon core_setting matches 1 run function mmt_skybattle:info

#init
scoreboard objectives add SkyBattle dummy
scoreboard objectives add SKBconfig dummy
scoreboard objectives add skydisplay dummy

function mmt_skybattle:info