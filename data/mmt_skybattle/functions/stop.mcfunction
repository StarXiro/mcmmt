schedule clear mmt_skybattle:2_on_second
schedule clear mmt_skybattle:border/2_summonborder
schedule clear mmt_skybattle:border/borderdmg
schedule clear mmt_skybattle:border/2_bordermark
schedule clear mmt_skybattle:border/bordermove
schedule clear mmt_skybattle:deathmessage/trigger
schedule clear mmt_skybattle:game_process/4_ingame
schedule clear mmt_skybattle:border/playerpos
schedule clear mmt_skybattle:game_process/5_round_end
schedule clear mmt_skybattle:game_process/2_startcountdown
schedule clear mmt_skybattle:2_mapview
schedule clear mmt_skybattle:border/2_bordermark

kill @e[tag=SKB_center]
kill @e[tag=SKB_border]
kill @e[tag=SKB_mapview]

scoreboard players set current_game core_setting 0
scoreboard players set AS SKBconfig 0

data remove storage mcmmt:skb randlist
data remove storage mcmmt:skb macro_bag
data remove storage mcmmt:skb teamtp
data remove storage mcmmt:skb list
data remove storage mcmmt:skb spanws
