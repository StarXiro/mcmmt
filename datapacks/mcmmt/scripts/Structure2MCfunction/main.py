'''
Date: 2024-05-18 16:20:19
Author: DarkskyX15
LastEditTime: 2024-05-21 08:34:41
'''

from os import walk as _walk
from os.path import join as _join

def getMultiPaths(folder_path: str) -> tuple[list[str], list[str]]:
    r"""
    返回一对路径列表:`(file_paths, folder_paths)`
    - `file_paths`:`folder_path`下所有文件的路径列表
    - `folder_paths`:`folder_path`下所有文件夹的路径列表 (包括`folder_path`本身)
    """
    file_path_list = list()
    folder_list = list()
    for filepath, folder_names, filenames in _walk(folder_path):
        for filename in filenames:
            file_path_list.append(_join(filepath, filename))
        folder_list.append(filepath)
    return (file_path_list, folder_list)

# REQUIRE MODULE: NBT >= 1.5.1
# https://pypi.org/project/NBT/

from nbt import nbt

SRC_PATH = '.\\scripts\\Structure2MCfunction\\src'
RESULT_PATH = '.\\scripts\\Structure2MCfunction\\results'
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

def generateFunction(src_path: str, filename: str) -> None:
    nbt_file = nbt.NBTFile(src_path, 'rb')
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
    
    with open(RESULT_PATH + '\\' + filename + '.mcfunction', 'w') as f:
        f.writelines(block_sets)

if __name__ == '__main__':
    file_paths, folders = getMultiPaths(SRC_PATH)
    for file_path in file_paths:
        filename = file_path.split('\\')[-1].split('.')[0]
        generateFunction(file_path, filename)
