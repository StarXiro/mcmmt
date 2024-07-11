<!--
 * @Date: 2024-05-10 14:28:44
 * @Author: DarkskyX15
 * @LastEditTime: 2024-07-12 02:54:44
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

## Core.Utils.Sqrt

提供基于牛顿迭代法的开根号实现。
