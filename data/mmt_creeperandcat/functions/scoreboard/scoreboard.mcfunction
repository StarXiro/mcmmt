schedule function mmt_creeperandcat:scoreboard/scoreboard 1s

execute as @r store result storage creeperandcat game_count int 1 run scoreboard players get game_count config
execute as @r store result storage creeperandcat round int 1 run scoreboard players get round CACconfig
execute as @r store result storage creeperandcat minute int 1 run scoreboard players get minute CACconfig
execute as @r store result storage creeperandcat second int 1 run scoreboard players get second1 CACconfig
execute as @r store result storage creeperandcat playercount int 1 run scoreboard players get playercount CACconfig
execute as @r store result storage creeperandcat kill int 1 run scoreboard players get kill CACconfig
data modify storage creeperandcat map set value Village

execute as @r run function mmt_creeperandcat:scoreboard/scoreboarddisplay with storage creeperandcat