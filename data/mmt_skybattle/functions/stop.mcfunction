schedule clear mmt_skybattle:on_second
schedule clear mmt_skybattle:border/summonborder
schedule clear mmt_skybattle:border/borderdmg
schedule clear mmt_skybattle:border/bordermark
schedule clear mmt_skybattle:border/bordermove
schedule clear mmt_skybattle:deathmessage/trigger
schedule clear mmt_skybattle:game_process/ingame
schedule clear mmt_skybattle:border/playerpos
schedule clear mmt_skybattle:game_process/round_end
schedule clear mmt_skybattle:game_process/startcountdown
schedule clear mmt_skybattle:mapview

scoreboard players set current_game core_setting 0

data remove storage mcmmt:skb randlist
data remove storage mcmmt:skb macro_bag
data remove storage mcmmt:skb teamtp
data remove storage mcmmt:skb list
data remove storage mcmmt:skb spanws
