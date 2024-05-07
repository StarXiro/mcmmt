#初始化
kill @e[type=marker,tag=config]
scoreboard players set team_count config 10
scoreboard players set teammate_count config 4
scoreboard players set countdown timer -1
scoreboard players set secs config 1200
scoreboard players set secs2 config 20
summon marker 10000 100 10000 {CustomName:'{"text":"game_count"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"tgttos"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"rsr"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"ccf"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"pkt"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"skb"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"ar"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"bb"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"all"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"minute"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"second"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"round_count"}',Tags:[config]} 
scoreboard players set @e[name="game_count"] config 0
scoreboard players set @e[name="round_count"] config 0
scoreboard players set @e[name="tgttos"] config 0
scoreboard players set @e[name="ar"] config 0
scoreboard players set @e[name="bb"] config 0
scoreboard players set @e[name="ccf"] config 0
scoreboard players set @e[name="skb"] config 0
scoreboard players set @e[name="pkt"] config 0
scoreboard players set @e[name="rsr"] config 0
scoreboard players set @e[name="minute"] timer 0
scoreboard players set @e[name="second"] timer 0
scoreboard players set @e[name="all"] player_count 0
team leave @a