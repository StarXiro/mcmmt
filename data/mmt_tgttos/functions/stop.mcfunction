#游戏结束
tag @a[tag=tgttos] remove tgttos
stopsound @a

#schedule clear
schedule clear mmt_tgttos:on_tick

#scoreboard display clear
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.aqua
scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar.team.light_purple
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.dark_green