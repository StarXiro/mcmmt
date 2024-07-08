#游戏检测
execute if score @e[name="tgttos",limit=1] config matches 2 run function tgttos:load
execute if score @e[name="tgttos",limit=1] config matches 10 run function tgttos:main