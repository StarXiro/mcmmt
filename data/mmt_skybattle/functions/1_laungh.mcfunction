gamemode spectator @a[tag=player]
#tp @a[tag=player] 25 112 -5049 facing 0 112 -5000
scoreboard players set timemode SKBconfig 0
scoreboard players set tick SKBconfig 0
scoreboard players set second SKBconfig 10
scoreboard players set show1 SKBconfig 100
scoreboard players set round SKBconfig 0
scoreboard players set current_game core_setting 4

summon marker 25 112 -5049 {Tags:[SKB_mapview]}
effect give @e[tag=SKB_mapview] invisibility infinite 1 true
tp @e[tag=SKB_mapview] 25 112 -5049 facing 0 112 -5000
function mmt_skybattle:2_mapview
#map view

scoreboard objectives setdisplay sidebar SKBconfig

data modify storage mcmmt:skb spawns append value "-27 98 -4935"
data modify storage mcmmt:skb spawns append value "25 98 -4935"
data modify storage mcmmt:skb spawns append value "-65 98 -4975"
data modify storage mcmmt:skb spawns append value "-65 98 -5027"
data modify storage mcmmt:skb spawns append value "27 98 -5065"
data modify storage mcmmt:skb spawns append value "65 98 -5025"
data modify storage mcmmt:skb spawns append value "65 98 -4973"
data modify storage mcmmt:skb spawns append value "-25 98 -5065"

tag @a[tag=player] add SKB
clear @a[tag=SKB]

scoreboard players set second SKBconfig 10
function mmt_skybattle:2_on_second

function mmt_skybattle:2_intro__fix
