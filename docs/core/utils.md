<!--
 * @Date: 2024-05-10 14:28:44
 * @Author: DarkskyX15
 * @LastEditTime: 2024-07-13 01:36:29
-->

# Core.Utils  

*内置工具类函数*  

目录：  

- [bfs 宽度优先搜索](#coreutilsbfs)  
- [check_point 检查点](#coreutilscheckpoint)
- [color_panel 调色盘](#coreutilscolorpanel)
- [cos 余弦](#coreutilscos)
- [for_each 列表循环](#coreutilsforeach)
- [len 列表长度](#coreutilslen)
- [linear_map 线性映射](#coreutilslinearmap)
- [make_match 随机配对](#coreutilsmakematch)
- [pillar_check 竖直方块检查](#coreutilspillarcheck)
- [rand 旧随机数](#coreutilsrand-已弃用)
- [range 范围列表生成](#coreutilsrange)
- [sbs 计分板冒泡排序](#coreutilssbs)
- [shuffle 随机打乱](#coreutilsshuffle)
- [sight_cast 视线投射](#coreutilssightcast)
- [sin 正弦](#coreutilssin)
- [sqrt 开平方根](#coreutilssqrt)
- [timer 计时器](#coreutilstimer)
- [to_bin 十进制转二进制](#coreutilstobin)
- [uuid_match UUID匹配](#coreutilsuuidmatch)

## Core.Utils.BFS

在世界范围内提供基于方块网格的宽度优先搜索。  
对于所有搜索到的方块，在其位置有`minecraft:marker`作为标记。对于每一个`minecraft:marker`，在其实体NBT中有数据值`data.depth`表示从起点到该点的深度。  
该函数的行为大部分可自定义，关于自定义搜索标准，见[自定义搜索标准](#bfs-自定义搜索标准)。

### BFS 参数列表

*参数名仅在说明文档中起方便指代的作用，与参数在实际储存或计分板中的路径无关，与函数传参的参数名也无必然对应关系。敬请注意，之后不再说明。*  

|参数名|参数类型|作用|备注|
|--|--|--|--|
|x_pos|double|起始x坐标|-|
|y_pos|double|起始y坐标|-|
|z_pos|double|起始z坐标|-|
|x_range|list[int]|搜索到的方块在X轴上与起点坐标差值的合法区间|只取列表前2项，左闭右闭|
|y_range|list[int]|同上，但在Y轴上|同上|
|z_range|list[int]|同上，但在Z轴上|同上|
|max_depth|int|合法方块的最大深度|-|
|max_steps|int|搜索进行的最多步数|-|
|direction|int(bit field)|合法的搜索方向|详细见[方向参数](#bfs-方向参数)|
|pred_path|string(函数路径)|自定义搜索函数谓词的路径|参考[函数谓词](#appendix-函数谓词)|

### BFS 返回机制

bfs工具不使用函数返回值。  
对于任意一个`do`函数（`do_with_entity`或`do_with_pos`），其运行完成后将会在搜索到的合法方块处生成带有`cu_bfs_ptr`计分板标签的`minecraft:marker`实体，在其实体NBT中有数据值`data.depth`表示从起点到该点的深度。在这之后使用者可以通过`@e[type=minecraft:marker, tag=cu_bfs_ptr]`选中，进行进一步的操作。  
在所有操作进行完毕后，请使用`mmt_core:utils/bfs/clear`清除所有生成的`minecraft:marker`。  

### BFS do_with_entity

- 函数路径：`mmt_core:utils/bfs/do_with_entity`  
- 参数：无需传参  

以执行者所在位置为起点进行搜索。

### BFS do_with_pos

- 函数路径：`mmt_core:utils/bfs/do_with_pos`
- 参数：`{x(x_pos), y(x_pos), z(z_pos)}`

以给定坐标为起点进行搜索，给定的位置需要被加载。  

### BFS clear

- 函数路径：`mmt_core:utils/bfs/clear`
- 参数：无需传参

清除已经生成的搜索标记。

### BFS show_ptr

- 函数路径：`mmt_core:utils/bfs/show_ptr`
- 参数：无需传参

以渐变色显示搜索标记，颜色基于标记的搜索深度计算。  
**注意：** 持续显示需要循环执行该函数。

### BFS setting_reset

- 函数路径：`mmt_core:utils/bfs/setting_reset`
- 参数：无需传参

重置bfs设置至默认值。

### BFS setting

- 函数路径：`mmt_core:utils/bfs/setting_reset`
- 参数：`{x(x_range), y(y_range), z(z_range), max_depth(max_depth), max_steps(max_steps), direction(direction), on_block(pred_path)}`

修改bfs设置。  

### BFS 自定义搜索标准

自定义搜索标准通过调整`pred_path`参数指向的函数谓词达成。  

对于熟悉NBT储存操作的使用者，可以直接修改`mcmmt:core_utils search.on_block`。  
否则可以只用`mmt_core:utils/bfs/setting`函数，传入参数`on_block`进行修改。  

对于`pred_path`指向的函数谓词，其执行位置为一个当前搜索到的方块位置，无传入参数。谓词应该判断该方块是否符合搜索标准。  
可以参考`mmt_core/functions/utils/bfs/private/presets`中的预设函数谓词。

### BFS 方向参数

`direction`参数为`int`类型，其32位二进制形式中的每一位代表一个方向是否合法。`direction`参数的默认值为`63`。  
对于每一个方块，取以其为中心的3x3x3的立方体，除去其本身，剩余26个方块代表26个方向。

|二进制位（从低至高）|相对坐标|/|二进制位（从低至高）|相对坐标|
|--|--|--|--|--|
|0|~ ~ ~-1|/|1|~ ~ ~1|
|2|~ ~-1 ~|/|3|~ ~1 ~|
|4|~1 ~ ~|/|5|~-1 ~ ~|
|6|~ ~-1 ~-1|/|7|~ ~1 ~1|
|8|~ ~1 ~-1|/|9|~ ~-1 ~1|
|10|~-1 ~ ~1|/|11|~-1 ~ ~-1|
|12|~1 ~ ~1|/|13|~1 ~ ~-1|
|14|~1 ~1 ~|/|15|~-1 ~-1 ~|
|16|~-1 ~1 ~|/|17|~1 ~-1 ~|
|18|~1 ~1 ~1|/|19|~-1 ~-1 ~-1|
|20|~-1 ~1 ~1|/|21|~1 ~-1 ~1|
|22|~1 ~1 ~-1|/|23|~-1 ~-1 ~1|
|24|~-1 ~1 ~-1|/|25|~1 ~-1 ~-1|

## Core.Utils.CheckPoint

提供通用的检查点支持。

## Core.Utils.ColorPanel

## Core.Utils.Cos

提供基于打表的余弦值计算。  
提供的接口与`Core.Utils.Sin`完全一致，请参考其文档。  

- `mmt_core:utils/cos_do`
- `mmt_core:utils/cos_with_score`

## Core.Utils.ForEach

## Core.Utils.Len

## Core.Utils.LinearMap

## Core.Utils.MakeMatch

## Core.Utils.PillarCheck

## Core.Utils.Rand (已弃用)

提供旧的基于线性同余方法的随机数生成。

**可用方法：**  

- `mmt_core:utils/rand_generate`  
  生成下一个随机数，保存在计分板`core_utils_rand -> result`中和储存的`mcmmt:core_utils -> rand.result`中。
- `mmt_core:utils/rand_bound_reset`  
  重置随机数生成的上下限，默认为[0 ~ 99999999]  
- `mmt_core:utils/rand_adjust_bound`  
  调整随机数生成的上下限，**需要传入参数。**  
  例子:  

  ```mcfunction
  # lower：下限
  # upper：上限 
  function mmt_core:utils/rand_adjust_bound {lower:0, upper:100}
  ```

*备注：* 不建议调整上下限，避免为放置影响其他命令而使用重置上下限导致的性能消耗。

## Core.Utils.Range

## Core.Utils.SBS

## Core.Utils.Shuffle

## Core.Utils.SightCast  

提供通用的视线投射函数（正常应该能适配所有实体）。

**可用方法：**  

- `mmt_core:utils/sight_cast_start`  
  在该命令执行者处执行视线投射。  
  返回数据保存如下：  

  |含义|计分板路径|储存路径|
  |--|--|--|
  |是否成功（0/1）|`core_utils_scast -> scast_success`|`mcmmt:core_utils -> sight_cast.success`|
  |迭代次数（步长0.5）|`core_utils_scast -> scast_last_iter`|`mcmmt:core_utils -> sight_cast.iter_cnt`|
  |结束位置|不储存|`mcmmt:core_utils -> sight_cast.end_pos`|
  |视线角度|不储存|`mcmmt:core_utils -> sight_cast.rotation`|

  结束处有标签为`sight_cast_ptr_end`的盔甲架供下一步操作使用。

- `mmt_core:utils/sight_cast_clear`  
  清除所有已结束的视线投射标记，即清除所有带`sight_cast_ptr_end`标签的盔甲架。  
  该函数应该在执行视线投射并进行了后续操作后立刻执行，以避免标记滞留带来的意外影响。

- `mmt_core:utils/sight_cast_adjust_bound`  
  调整视线投射的最多迭代次数，每次迭代前进0.5单位距离，默认最多100次。  
  **需要传入参数。** 例子：

  ```mcfunction
  # max_iteration 最大迭代次数
  function mmt_core:utils/sight_cast_adjust_bound {max_iteration:200}
  ```

**使用样例：**  

```mcfunction
# 为有what_player的玩家使用视线投射
tag @a[tag=what_player] add use_sight_cast
execute as @a[tag=use_sight_cast] at @s run function mmt_core:utils/sight_cast_start
# 在视线投射的结束处放置tnt
execute as @e[type=armor_stand, tag=sight_cast_ptr_end] at @s run setblock ~ ~ ~ tnt
# 清除投射标记
function mmt_core:utils/sight_cast_clear
```

## Core.Utils.Sin

提供基于打表的正弦值计算。  
输入的角度值在计算过程中只保留一位精度。  
结果精度保留到小数点后6位。  

**可用方法：**  

- `mmt_core:utils/sin_do`  
  **需传入参数。** 例子：

  ```mcfunction
  # degree 角度值
  function mmt_core:utils/sin_do {degree:22.5f}
  ```

  返回的数据值如下：  
  |数据|计分板路径|储存路径|
  |--|--|--|
  |正弦值|`core_utils_sincos -> result`|`mcmmt:core_utils -> sincos.result`|
  |结果放大系数（针对计分板数据）|`core_utils_sincos -> scaler`|无|

- `mmt_core:utils/sin_with_score`  
  针对计分板特化的调用接口，注意传入的计分板数据应该为扩大10倍后的整数角度值。  

  ```mcfunction
  # subj 追踪项
  # obj 计分板名称
  function mmt_core:utils/sin_with_score {subj:test, obj:test_board}
  ```

## Core.Utils.Sqrt

提供基于牛顿迭代法的开根号实现。  
需开根号的值小于等于0时，返回0。

**可用方法：**

- `mmt_core:utils/sqrt_do`  
  计算传入参数值的平方根。  
  返回数据储存如下：  

  |数据|计分板|储存|
  |--|--|--|
  |计算结果（计分板为放大后整数）|`core_utils_sqrt -> result`|`mcmmt:core_utils -> sqrt.result`|
  |倍率系数（计分板中为放大系数`N`，储存中为`1/N`）|`core_utils_sqrt -> scaler`|`mcmmt:core_utils -> sqrt.scaler`|  

  **需传入参数：** 例子：

  ```mcfunction
  # value 需要开平方的参数
  function mmt_core:utils/sqrt_do {value:10}
  ```

- `mmt_core:utils/sqrt_with_score`  
  为计分板特化的调用接口。  
  **需传入参数：** 例子：

  ```mcfunction
  # subj 追踪项名称
  # obj 计分板名称
  function mmt_core:utils/sqrt_with_score {subj:test, obj:data_store}
  ```

**使用示例：**

```mcfunction
scoreboard players set test data_store 114
execute store result storage mcmmt:core_utils sqrt.value int 1.0 run scoreboard players get test data_store
# 或 function mmt_core:utils/sqrt_with_score {subj:test, obj:data_store}
function mmt_core:utils/sqrt_do with storage mcmmt:core_utils sqrt
data modify entity @e[limit=1, type=armor_stand] Motion[] set from storage mcmmt:core_utils sqrt.result
```

## Core.Utils.Timer

## Core.Utils.ToBin

提供十进制向二进制的转换。  
转换后结果将以32位Byte数组保存在储存的`mcmmt:core_utils.to_bin.bin`路径，或每一位以追踪项名`pos{位置}`储存在计分板`core_utils_to_bin`中。  

例如：  
对于十进制数5，其二进制表示为101。则函数运行后有以下结果：  
在mcmmt:core_utils.to_bin.bin: `[B; 1b,0b,1b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b,0b]`。  
在计分板core_utils_to_bin：pos0、pos2为1，其余pos3~pos31与pos1都为0。  

**可用方法：**

- `mmt_core:utils/to_bin`  
  **需要传入参数。** 例子：  

  ```mcfunction
  # value: 需要转成二进制的十进制数。
  function mmt_core:utils/to_bin {value: 5}
  ```

- `mmt_core:utils/to_bin_with_score`  
  使用计分板参数的特化方法。  
  **需要传入参数。** 例子：  

  ```mcfunction
  # subj 追踪项名
  # obj 计分板名
  function mmt_core:utils/to_bin {subj: test, obj: test_board}
  ```

## Core.Utils.UUIDMatch

提供UUID比较。

**可用方法：**

- `mmt_core:utils/uuid_match_set`  
  **需传入参数。**  
  设置UUID匹配的目标。  
  传入的`Compound`类型NBT标签中，必须含有`UUID`标签。  
  例子：  

  ```mcfunction
  # 对于直接使用实体的UUID
  function mmt_core:utils/uuid_match_set with entity @s
  # 对于使用其他标签内的UUID
  # 此处@s假设为 minecraft:ocelot
  data modify storage mcmmt:core_utils uuid_match.UUID set from entity @s LoveCause
  function mmt_core:utils/uuid_match_set with storage mcmmt:core_utils uuid_match
  ```

- `mmt_core:utils/uuid_match_pred`  
  类似谓词设计的UUID比较检测。  
  若命令执行者的UUID与设置的UUID匹配目标一致，返回1，否则返回fail。例子：  

  ```mcfunction
  execute as @e[type=minecraft:ocelot] if function mmt_core:utils/uuid_match_pred run say It's me!
  ```

## appendix 函数谓词

*该名词仅作用于`Core.Utils`内，不代表其他任何组织或个人的定义。*  

函数谓词属于函数，指一类总是返回0/1表`True`或`False`的函数，在`Core.Utils`中一般被用于自定义函数的行为。

例子：

```mcfunction
$scoreboard players set temp test $(score)
execute if score temp test matches -5..5 run return 1
return fail
```

该函数谓词接收参数`score`，预注册计分板`test`，当参数`score`在-5到5之间时，谓词判断条件为真。
