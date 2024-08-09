#info
execute if score logon core_setting matches 1 run function mmt_tgttos:info

#scoreboard setup
#set up
scoreboard objectives add tgttos_player_count dummy
scoreboard objectives add tgttos_finish_count dummy
scoreboard objectives add tgttos dummy
scoreboard objectives add tgttos_config dummy
scoreboard objectives add tgttos_team_score dummy
scoreboard objectives add tgttos_player_score dummy
scoreboard objectives add tgttos_message_type dummy
scoreboard players set round_count tgttos 0
scoreboard players set secs tgttos 1200
scoreboard players set secs2 tgttos 20
scoreboard players set i tgttos_config 0
scoreboard objectives add tgttos_finish_check dummy
scoreboard players reset * tgttos_finish_count
scoreboard players set @a[tag=player] tgttos_finish_count 0

#for loop
function mmt_tgttos:scoreboard/__setup__
scoreboard players set i tgttos_config 0

#data initialize
data modify storage mcmmt:tgttos max_score set value 50
data modify storage mcmmt:tgttos scorelist.reward set value [0,120,100,80,65,50,40,30,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage mcmmt:tgttos scorelist.reward2 set value [0,160,120,80,0,0,0,0,0]
data modify storage mcmmt:tgttos death.messagelist set value ["","对猫毛过敏。","不认为自己可以成功到达另一边。","脚下一滑。","接受了深渊的召唤。","摔的七荤八素。","抛弃了ta心爱的方块。","的键盘似乎出了一些问题。","操作不当。","被苦力怕附身了。","使用了信仰之跃，但结果不太令人满意。"]