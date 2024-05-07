#记分板重置
scoreboard objectives remove attacking_or_not 
scoreboard objectives remove id 
scoreboard objectives remove config 
scoreboard objectives remove tag_in_team 
scoreboard objectives remove tag_team
scoreboard objectives remove hurtby 
scoreboard objectives remove hurtby_temp 
scoreboard objectives remove rand 
scoreboard objectives remove menu
scoreboard objectives remove score 
scoreboard objectives remove player_count
scoreboard objectives remove alive
scoreboard objectives remove timer
scoreboard objectives remove block_use

#记分板创建
scoreboard objectives add attacking_or_not dummy
scoreboard objectives add id dummy
scoreboard objectives add config dummy
scoreboard objectives add tag_in_team dummy
scoreboard objectives add tag_team dummy
scoreboard objectives add hurtby dummy
scoreboard objectives add hurtby_temp dummy
scoreboard objectives add rand dummy
scoreboard objectives add menu minecraft.dropped:minecraft.cooked_cod
scoreboard objectives add score dummy
scoreboard objectives add player_count dummy
scoreboard objectives add alive deathCount
scoreboard objectives add timer dummy
