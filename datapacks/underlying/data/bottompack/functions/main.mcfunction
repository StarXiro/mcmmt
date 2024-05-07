#大厅主函数
function lobby:main
function bottompack:test

#时间模块
function bottompack:timer

#菜单检测
execute as @a[scores={menu=1..}] run function lobby:menu

#丢出物品检测
function bottompack:item_chaser

#伤害检测
execute as @a[advancements={bottompack:hurt=true}] run function bottompack:attacking
execute as @a[advancements={bottompack:kill=true}] run function bottompack:trigger
execute as @a[advancements={bottompack:hurtby=true}] run function bottompack:damageget
function bottompack:ifdead

#死亡消息
execute as @a[advancements={bottompack:killby=true},scores={hurtby=-2147483648..2147483647}] run function bottompack:deathbroadcast

#其他
scoreboard players set @a[team=spectator] id -1
tag @a[team=spectator] remove player

#其他周期函数
scoreboard players remove tick2 timer 1
execute if score tick2 timer matches -5 run function bottompack:tick2

