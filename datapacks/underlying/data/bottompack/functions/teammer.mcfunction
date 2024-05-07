#随机分队
team join non_separated @a[team=!dev,team=!spectator]
execute if score teammate_count config matches 1.. run function bottompack:teammerextra
execute if score teammate_count config matches 2.. run function bottompack:teammerextra
execute if score teammate_count config matches 3.. run function bottompack:teammerextra
execute if score teammate_count config matches 4.. run function bottompack:teammerextra
execute if score teammate_count config matches 5.. run function bottompack:teammerextra
execute if score teammate_count config matches 6.. run function bottompack:teammerextra
execute if score teammate_count config matches 7.. run function bottompack:teammerextra
execute if score teammate_count config matches 8.. run function bottompack:teammerextra
execute if score teammate_count config matches 9.. run function bottompack:teammerextra
execute if score teammate_count config matches 10.. run function bottompack:teammerextra
scoreboard players set @a[team=red] tag_team 100
scoreboard players set @a[team=orange] tag_team 200
scoreboard players set @a[team=yellow] tag_team 300
scoreboard players set @a[team=lime] tag_team 400
scoreboard players set @a[team=green] tag_team 500
scoreboard players set @a[team=aqua] tag_team 600
scoreboard players set @a[team=blue] tag_team 700
scoreboard players set @a[team=pink] tag_team 800
team join spectator @a[team=non_separated]
team modify red collisionRule never
team modify orange collisionRule never 
team modify yellow collisionRule never 
team modify green collisionRule never 
team modify lime collisionRule never 
team modify blue collisionRule never 
team modify pink collisionRule never 
team modify dev collisionRule never 
team modify spectator collisionRule never 
team modify non_separated collisionRule never 
team modify aqua collisionRule never 


