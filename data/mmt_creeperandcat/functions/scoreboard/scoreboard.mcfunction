schedule function mmt_creeperandcat:scoreboard/scoreboard 1s

execute as @r store result storage mcmmt:creeperandcat game_count int 1 run scoreboard players get game_count CACconfig
execute as @r store result storage mcmmt:creeperandcat round int 1 run scoreboard players get round CACconfig
execute as @r store result storage mcmmt:creeperandcat minute int 1 run scoreboard players get minute CACconfig
execute as @r store result storage mcmmt:creeperandcat second1 int 1 run scoreboard players get second1 CACconfig
execute as @r store result storage mcmmt:creeperandcat playercount int 1 run scoreboard players get playercount CACconfig
execute as @r store result storage mcmmt:creeperandcat kill int 1 run scoreboard players get kill CACconfig
data modify storage mcmmt:creeperandcat map set value Village

execute as @r run function mmt_creeperandcat:scoreboard/scoreboarddisplay with storage mcmmt:creeperandcat