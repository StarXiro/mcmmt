scoreboard players set tick SKBconfig 0
scoreboard players set second SKBconfig 0
scoreboard players set timemode SKBconfig 1
scoreboard players set 0 SKBconfig 0

scoreboard players set red SKBconfig 0
scoreboard players set blue SKBconfig 0
scoreboard players set green SKBconfig 0
scoreboard players set yellow SKBconfig 0
scoreboard players set aqua SKBconfig 0
scoreboard players set pink SKBconfig 0
scoreboard players set orange SKBconfig 0
scoreboard players set lime SKBconfig 0

#shuffle team list
execute as @a[tag=SKB,team=red] run scoreboard players add red SKBconfig 1
execute as @a[tag=SKB,team=blue] run scoreboard players add blue SKBconfig 1
execute as @a[tag=SKB,team=green] run scoreboard players add green SKBconfig 1
execute as @a[tag=SKB,team=yellow] run scoreboard players add yellow SKBconfig 1
execute as @a[tag=SKB,team=aqua] run scoreboard players add auqa SKBconfig 1
execute as @a[tag=SKB,team=pink] run scoreboard players add pink SKBconfig 1
execute as @a[tag=SKB,team=orange] run scoreboard players add orange SKBconfig 1
execute as @a[tag=SKB,team=lime] run scoreboard players add lime SKBconfig 1

#function teamtp
execute if score red SKBconfig > 0 SKBconfig run data modify storage mcmmt:skb list append value red
execute if score blue SKBconfig > 0 SKBconfig run data modify storage mcmmt:skb list append value blue
execute if score green SKBconfig > 0 SKBconfig run data modify storage mcmmt:skb list append value green
execute if score yellow SKBconfig > 0 SKBconfig run data modify storage mcmmt:skb list append value yellow
execute if score auqa SKBconfig > 0 SKBconfig run data modify storage mcmmt:skb list append value aqua
execute if score pink SKBconfig > 0 SKBconfig run data modify storage mcmmt:skb list append value pink
execute if score orange SKBconfig > 0 SKBconfig run data modify storage mcmmt:skb list append value orange
execute if score lime SKBconfig > 0 SKBconfig run data modify storage mcmmt:skb list append value lime

function mmt_core:utils/shuffle/do with storage mcmmt:skb list
data modify storage mcmmt:skb randlist set from storage mcmmt:core_utils shuffle.list
function mmt_skybattle:game_process/teamtp with storage mcmmt:skb randlist

data modify storage mcmmt:skb macro_bag.for_each.list set from storage mcmmt:skb randlist
data modify storage mcmmt:skb macro_bag.for_each.loop_body set value "mmt_skybattle:game_process/teamtp"
function mmt_core:utils/for_each/do with storage mcmmt:skb macro_bag.for_each

execute as @a[tag=player] run setblock ~1 ~ ~ barrier
execute as @a[tag=player] run setblock ~-1 ~ ~ barrier
execute as @a[tag=player] run setblock ~ ~2 ~ barrier
execute as @a[tag=player] run setblock ~ ~ ~1 barrier
execute as @a[tag=player] run setblock ~ ~ ~-1 barrier

clear @a[tag=SKB]
give @a[tag=SKB] stone_sword
give @a[tag=SKB] iron_pickaxe
give @a[tag=SKB] bow
give @a[tag=SKB] cooked_beef 12

give @a[tag=SKB,team=red] red_concrete 64
give @a[tag=SKB,team=blue] blue_concrete 64
give @a[tag=SKB,team=green] green_concrete 64
give @a[tag=SKB,team=yellow] yellow_concrete 64
give @a[tag=SKB,team=aqua] cyan_concrete 64
give @a[tag=SKB,team=pink] pink_concrete 64
give @a[tag=SKB,team=orange] orange_concrete 64
give @a[tag=SKB,team=lime] lime_concrete 64

summon marker 0 110 -5000 {Tags:[SKB_center]}
function mmt_skybattle:game_process/marker

function mmt_skybattle:gameprocess/startcountdown