<!--
 * @Date: 2024-05-11 00:51:40
 * @Author: DarkskyX15
 * @LastEditTime: 2024-05-11 01:21:27
-->

# MCMMT  

结构图见本文件夹下的`mcmmt_structure.png`

## Core  

数据包基础  
各个部分内容如下  

### advancements 文件夹  
提供进度驱动的事件检测支持  
**文件命名规则：**`event_<事件名>`  

### functions/utils 文件夹  
提供常用功能的函数实现  
- **文件命名规则：**`<功能名>_<函数名>`
  例如：`rand_generate`
- **scoreboard命名规则：**`core_utils_<功能名>[_<...>]`
  例如：`core_utils_rand`
- **storage管理规则：**
  命名空间：`mcmmt:core_utils`  
  路径：`<功能名>.<其他>[...]`
  例如：`mcmmt:core_utils rand.result`

### functions/statistics 文件夹
提供计分板准则维护的事件检测支持
- **文件命名规则：**`<任意相关说明>`  
  例如：`player_death`  
- **scoreboard命名规则：**`stas_<last/this>_<事件>`  
  例如：`stas_last_death` & `stas_this_death`  

*注：该文件夹中还存在valid_check命令文件，用于初始化有非法统计数据的实体，通过`Core.per_sec`调用*  

### functions/verbs 文件夹
在该文件夹中的事件命令文件中注册事件处理函数
- **文件命名规则：**`<事件名>`
  例如：`entity_hurt_player`  

**事件命令文件的执行者和位置均为触发事件的实体本身**  
请在`#--- Custom Inserts`后注册各个模块的事件处理函数  

### install  
Core安装函数，初始化所有Core需要的storage和scoreboard，并会调用模块的`install`函数

### uninstall  
Core卸载函数，会调用模块的`uninstall`函数  

### per_tick  
每刻执行的函数，从安装后即开始执行  

### per_sec  
每秒执行的函数，从安装后即开始执行  

