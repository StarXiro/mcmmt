#其他
clear @a
stopsound @a

#记分板初始化
function bottompack:scoreboard_initialization

#大厅加载
function lobby:load

#设置初始化
function bottompack:configload

#tag初始化
function bottompack:tag_initialization

#队伍初始化
function bottompack:team_initialization

#lobby初始化
function lobby:initialization

#计时器初始化
function bottompack:timer

#分队等初始化
function bottompack:start

#加载完成喵
tellraw @a {"text":"MCMMT:加载完成喵!"}
