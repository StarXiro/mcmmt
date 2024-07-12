<!--
 * @Date: 2024-05-10 14:28:44
 * @Author: DarkskyX15
 * @LastEditTime: 2024-07-13 01:36:29
-->

# Core.Utils  

*内置工具类函数*  

## Core.Utils.Rand

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
  function mmt_core:utils/sqrt_with_score 
  ```

**使用示例：**

```mcfunction
scoreboard players set test data_store 114
execute store result storage mcmmt:core_utils sqrt.value int 1.0 run scoreboard players get test data_store
# 或 function mmt_core:utils/sqrt_with_score {subj:test, obj:data_store}
function mmt_core:utils/sqrt_do with storage mcmmt:core_utils sqrt
data modify entity @e[limit=1, type=armor_stand] Motion[] set from storage mcmmt:core_utils sqrt.result
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

## Core.Utils.Cos

提供基于打表的余弦值计算。  
提供的接口与`Core.Utils.Sin`完全一致，请参考其文档。  

- `mmt_core:utils/cos_do`
- `mmt_core:utils/cos_with_score`
