schedule function mmt_skybattle:mapview 1t
execute if score tick SKBconfig <= show1 CACconfig run tp @a[tag=player,gamemode=spectator] ^0 ^0 ^0.2 facing 0 112 -5000
execute if score tick SKBconfig > show1 SKBconfig run tp @a[tag=player,gamemode=spectator] ^0 ^0.2 ^0 facing 0 110 -5000

scoreboard players add tick SKBconfig 1
execute if score tick SKBconfig matches 100 run tp @a[tag=player,gamemode=spectator] 0 150 -5000 facing 0 100 -5000
execute if score tick SKBconfig matches 200 run gamemode survival @a[tag=player,gamemode=spectator]
