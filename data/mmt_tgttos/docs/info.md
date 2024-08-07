<!--
 * @Date: 2024-07-08 16:07:23
 * @Author: StarXiro
 * @LastEditTime: 2024-07-08 16:07:23
-->
# 信息记录
此文档记录TGTTOS小游戏数据包核心部分相关信息的记录，方便读取和调用。

## 坐标记录
此处提供TGTTOS游戏坐标、地图坐标等记录。
##### 游戏运行环境
Pos - 9000 101 9000
##### MAP1 codake
Pos - 8000 101 8000
##### MAP2 UNNAMED
Pos - -8017 36 -7955
##### MAP3 
Pos - -7020 72 -7010

## 名词解释
此处提供比较难记、难懂的名词和简称对照表，便于理解。

## 模块架构
### death_check
### game_process
### item
### map
### protection
### scoreboard
|文件名|类型|内容|调用函数|被调用|
|:---:|:---:|---|---|---|
|**scoreboard.mcfunction**|loop|玩家数量更新<br>完成数量更新<br>extra传参准备|$scoreboard/scoreboardextra.mcfunction|on_tick.mcfunction|
|**scoreboardcextra.mcfunction**|loop|记分板宏函数执行|/|scoreboard.mcfunction|
### time_check
|文件名|类型|内容|调用函数|被调用|
|:---:|:---:|---|---|---|
|**timer.mcfunction**|loop|倒计时<br>分钟和秒数显示<br>显示修正|/|install.mcfunction|
### 根文件夹
|文件名|类型|内容|调用函数|被调用|
|:---:|:---:|---|---|---|
|**info.mcfunction**|single|版本号等信息展示|/|install.mcfunction|
|**install.mcfunction**|single|记分板创建与重置<br>地图相关marker生成|info.mcfunction|/|
|**launch.mcfunction**|single|玩家传送与状态修改<br>游戏数据更新<br>记分板展示<br>循环开始|on_tick.mcfunction<br>on_5tick.mcfunction<br>game_process/one_use/transroundend.mcfunction<br>game_process/intro.mcfunction|/|
|**on_5tick.mcfunction**|loop|物品给予判定|item/supply.mcfunction|launch.mcfunction|
|**on_tick.mcfunction**|loop|时间模块调用<br>记分板更新<br>物品追踪<br>三种游戏进程判定及调用<br>三种游戏转换判定及调用<br>死亡追踪<br>结束追踪|time_check/timer.mcfunction<br>scoreboard/scoreboard.mcfunction<br>item/chaser.mcfunction<br>game_process/one_use/transroundxxx.mcfunction<br>game_process/loop/round_xxx.mcfunction<br>death_check/death_check.mcfunction<br>game_process/loop/tgttos_finish_check.mcfunction|launch.mcfunction|
|**stop.mcfunction**|single|双循环函数停止|/|/|
|**uninstall.mcfunction**|single|记分板注销<br>data注销<br>marker卸载|/|/|

## 更新记录
### 2024/07
#### 2024/07/08前  
##### V0.0.0-V0.1.0  
更新TGTTOS地图1，创建数据包文件、对数据包进行架构。  
#### 2024/07/08
##### V0.1.1
重置架构，贴合**Darksky**编制的MCMMT编写规范，暴露接口，提供调用。
##### V0.2.1
timer模块完善，架构继续重置。
#### 2024/07/09
##### V0.3.1
scoreboard模块修改，抛弃underlying旧架构，剥离底层逻辑。
#### 2024/07/10
##### V0.4.1
#### 2024/07/11
##### V0.5.1
时序完善、function文件注释完善。
#### 2024/07/12
##### V0.6.1
finish检测模块开始，豹猫生成、喂养检测机制完成。
#### 2024/07/13
##### V0.7.1
结束判据完善、结束输出完善。
#### 2024/07/14
##### V0.7.2
TGTTOS文档完善。
#### 2024/07/28
MAP2完成。
#### 2024/08/06
##### V0.8.1-V0.8.4
团队分数数据设计与修改，scoreboard多队有关重修。