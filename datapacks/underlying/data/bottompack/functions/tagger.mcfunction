#tag for all players (player count can be changed per team)
tag @a add not_separated
tag @r[team=red,tag=not_separated] add 1
tag @r[team=orange,tag=not_separated] add 1
tag @r[team=yellow,tag=not_separated] add 1
tag @r[team=lime,tag=not_separated] add 1
tag @r[team=green,tag=not_separated] add 1
tag @r[team=aqua,tag=not_separated] add 1
tag @r[team=blue,tag=not_separated] add 1
tag @r[team=pink,tag=not_separated] add 1
tag @a[tag=1] remove not_separated
tag @r[team=red,tag=not_separated] add 2
tag @r[team=orange,tag=not_separated] add 2
tag @r[team=yellow,tag=not_separated] add 2
tag @r[team=lime,tag=not_separated] add 2
tag @r[team=green,tag=not_separated] add 2
tag @r[team=aqua,tag=not_separated] add 2
tag @r[team=blue,tag=not_separated] add 2
tag @r[team=pink,tag=not_separated] add 2
tag @a[tag=2] remove not_separated
tag @r[team=red,tag=not_separated] add 3
tag @r[team=orange,tag=not_separated] add 3
tag @r[team=yellow,tag=not_separated] add 3
tag @r[team=lime,tag=not_separated] add 3
tag @r[team=green,tag=not_separated] add 3
tag @r[team=aqua,tag=not_separated] add 3
tag @r[team=blue,tag=not_separated] add 3
tag @r[team=pink,tag=not_separated] add 3
tag @a[tag=3] remove not_separated
tag @r[team=red,tag=not_separated] add 4
tag @r[team=orange,tag=not_separated] add 4
tag @r[team=yellow,tag=not_separated] add 4
tag @r[team=lime,tag=not_separated] add 4
tag @r[team=green,tag=not_separated] add 4
tag @r[team=aqua,tag=not_separated] add 4
tag @r[team=blue,tag=not_separated] add 4
tag @r[team=pink,tag=not_separated] add 4
tag @a[tag=4] remove not_separated
tag @r[team=red,tag=not_separated] add 5
tag @r[team=orange,tag=not_separated] add 5
tag @r[team=yellow,tag=not_separated] add 5
tag @r[team=lime,tag=not_separated] add 5
tag @r[team=green,tag=not_separated] add 5
tag @r[team=aqua,tag=not_separated] add 5
tag @r[team=blue,tag=not_separated] add 5
tag @r[team=pink,tag=not_separated] add 5
tag @a[tag=5] remove not_separated
tag @r[team=red,tag=not_separated] add 6
tag @r[team=orange,tag=not_separated] add 6
tag @r[team=yellow,tag=not_separated] add 6
tag @r[team=lime,tag=not_separated] add 6
tag @r[team=green,tag=not_separated] add 6
tag @r[team=aqua,tag=not_separated] add 6
tag @r[team=blue,tag=not_separated] add 6
tag @r[team=pink,tag=not_separated] add 6
tag @a[tag=6] remove not_separated
tag @r[team=red,tag=not_separated] add 7
tag @r[team=orange,tag=not_separated] add 7
tag @r[team=yellow,tag=not_separated] add 7
tag @r[team=lime,tag=not_separated] add 7
tag @r[team=green,tag=not_separated] add 7
tag @r[team=aqua,tag=not_separated] add 7
tag @r[team=blue,tag=not_separated] add 7
tag @r[team=pink,tag=not_separated] add 7
tag @a[tag=7] remove not_separated
tag @r[team=red,tag=not_separated] add 8
tag @r[team=orange,tag=not_separated] add 8
tag @r[team=yellow,tag=not_separated] add 8
tag @r[team=lime,tag=not_separated] add 8
tag @r[team=green,tag=not_separated] add 8
tag @r[team=aqua,tag=not_separated] add 8
tag @r[team=blue,tag=not_separated] add 8
tag @r[team=pink,tag=not_separated] add 8
tag @a[tag=8] remove not_separated
tag @r[team=red,tag=not_separated] add 9
tag @r[team=orange,tag=not_separated] add 9
tag @r[team=yellow,tag=not_separated] add 9
tag @r[team=lime,tag=not_separated] add 9
tag @r[team=green,tag=not_separated] add 9
tag @r[team=aqua,tag=not_separated] add 9
tag @r[team=blue,tag=not_separated] add 9
tag @r[team=pink,tag=not_separated] add 9
tag @a[tag=9] remove not_separated
tag @r[team=red,tag=not_separated] add 10
tag @r[team=orange,tag=not_separated] add 10
tag @r[team=yellow,tag=not_separated] add 10
tag @r[team=lime,tag=not_separated] add 10
tag @r[team=green,tag=not_separated] add 10
tag @r[team=aqua,tag=not_separated] add 10
tag @r[team=blue,tag=not_separated] add 10
tag @r[team=pink,tag=not_separated] add 10
tag @a[tag=10] remove not_separated

#tag数据联动
scoreboard players set @a[tag=1] tag_in_team 1
scoreboard players set @a[tag=2] tag_in_team 2
scoreboard players set @a[tag=3] tag_in_team 3
scoreboard players set @a[tag=4] tag_in_team 4
scoreboard players set @a[tag=5] tag_in_team 5
scoreboard players set @a[tag=6] tag_in_team 6
scoreboard players set @a[tag=7] tag_in_team 7
scoreboard players set @a[tag=8] tag_in_team 8
scoreboard players set @a[tag=9] tag_in_team 9
scoreboard players set @a[tag=10] tag_in_team 10

#其他
team join spectator @a[tag=not_separated]
tag @a remove not_separated
tag @a[team=!dev,team=!spectator] add player
item replace entity @a[tag=player] hotbar.8 with cooked_cod 1
