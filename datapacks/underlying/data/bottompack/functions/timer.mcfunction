#计时器
execute if score tgttos timer matches 0.. run scoreboard players remove tgttos timer 1
execute if score countdown timer matches 0.. run scoreboard players remove countdown timer 1
#@e[scores={timer=0..},limit=1,name=!"minute",name=!"second"]
scoreboard players operation @e[name="minute"] timer = countdown timer
scoreboard players add @e[name="minute"] timer 1
scoreboard players operation @e[name="minute"] timer /= secs config
scoreboard players operation @e[name="second"] timer = countdown timer
scoreboard players add @e[name="second"] timer 1
scoreboard players operation @e[name="second"] timer %= secs config
scoreboard players operation @e[name="second"] timer /= secs2 config
execute if score countdown timer matches 18 run scoreboard players set countdown timer -1
#execute if score @e[name="second",limit=1] timer matches 60 run scoreboard players set second timer 0

