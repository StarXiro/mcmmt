
PATH = r'scripts\ConstantGen'

template = 'execute if score pos{} core_utils_to_bin matches 1 positioned ~{} ~{} ~{} run function mmt_core:utils/private_bfs/create_ptr\n'

index = -1
with open(PATH + '\\result.txt', 'w', encoding='utf-8') as f:
    for a in ['', '-1', '1']:
        for b in ['', '-1', '1']:
            for c in ['', '-1', '1']:
                f.write(template.format(index, a, b, c))
                index += 1
