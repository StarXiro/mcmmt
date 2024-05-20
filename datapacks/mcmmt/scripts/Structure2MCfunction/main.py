'''
Date: 2024-05-18 16:20:19
Author: DarkskyX15
LastEditTime: 2024-05-20 19:41:28
'''

# REQUIRE MODULE: NBT >= 1.5.1
# https://pypi.org/project/NBT/

from nbt import nbt

PATH_PREFIX = 'scripts\\Structure2MCfunction\\'
STRUCTURE_PATH = 'pkt_map1.nbt'
SAVE_PATH = 'result1.mcfunction'
EXCLUDE_LIST = ['minecraft:air']

def getBlockStr(template: nbt.TAG_Compound) -> str:
    block_id = template['Name'].valuestr()
    connected_prop = []
    try:
        properties = template['Properties']
    except KeyError:
        pass
    else:
        properties = properties.values()
        for property in properties:
            connected_prop.append(property.namestr() + '=' + property.valuestr())
    return block_id + '[' + ','.join(connected_prop) + ']'

if __name__ == '__main__':
    nbt_file = nbt.NBTFile(PATH_PREFIX + STRUCTURE_PATH, 'rb')
    block_data = nbt_file['blocks']
    block_mapping = nbt_file['palette']

    exclude_filter = []
    str_block_list = []
    index = 0
    for block_template in block_mapping:
        if block_template['Name'].valuestr() in EXCLUDE_LIST:
            exclude_filter.append(index)
        str_block_list.append(getBlockStr(block_template))
        index += 1

    block_sets = []

    for a_block in block_data:
        coord = []
        palette_pos = int(a_block['state'].valuestr())
        if palette_pos in exclude_filter:
            continue
        for coordinate in a_block['pos']:
            coord.append('~' + coordinate.valuestr())
        position_str = ' '.join(coord)
        function_str = 'setblock ' + position_str + ' ' + str_block_list[palette_pos]
        block_sets.append(function_str + '\n')
    
    with open(PATH_PREFIX + SAVE_PATH, 'w') as f:
        f.writelines(block_sets)
