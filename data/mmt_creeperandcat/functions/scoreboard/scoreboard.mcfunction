execute as @r store result storage creeperandcat game_count int 1 run scoreboard players get game_count config
execute as @r store result storage creeperandcat round_count int 1 run scoreboard players get round_count CACconfig
execute as @r store result storage creeperandcat minute int 1 run scoreboard players get minute CACconfig
execute as @r store result storage creeperandcat second int 1 run scoreboard players get second1 CACconfig
execute as @r store result storage creeperandcat player_count int 1 run scoreboard players get player_count CACconfig
execute as @r store result storage creeperandcat finish_count int 1 run scoreboard players get kill CACconfig
data modify storage creeperandcat {map:1} merge value Village

execute as @r run function mmt_creeperandcat:scoreboard/scoreboarddisplay with storage creeperandcat