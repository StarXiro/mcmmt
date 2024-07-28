
print(bin(-2147483648))

PATH = r'scripts\ConstantGen'

index = 1
path_template = '{}\\do_position_{}.mcfunction'
template = 'scoreboard players set pos{} core_utils_to_bin 1\nscoreboard players remove input core_utils_to_bin {}\n'
for i in range(32):
    with open(path_template.format(PATH, i), 'w', encoding='utf-8') as f:
        f.write(template.format(i, index, index))
    index <<= 1
