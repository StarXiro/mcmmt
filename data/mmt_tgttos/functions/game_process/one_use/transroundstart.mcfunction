#round to round_end // code for round_end

#main
scoreboard players set countdown tgttos 219

#log
title @a title {"text":"回合结束！","color":"red","bold":true}

#main
scoreboard players reset * tgttos_config
scoreboard players set team_rank tgttos_config 0







#go back 
scoreboard players set gameprocess tgttos 3

