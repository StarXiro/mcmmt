'''
Date: 2024-05-17 21:10:38
Author: DarkskyX15
LastEditTime: 2024-05-18 17:49:38
'''
from json import dumps

PATH_PREFIX = 'scripts\\DataIDGenerator\\'

def filterLine(contents: list[str], front_sign: str) -> list[str]:
    new_contents = []
    for line in contents:
        if line[:len(front_sign)] == front_sign:
            new_contents.append(line[len(front_sign):])
    return new_contents

def selectPeriod(name_list: list[str], front: str = None, back: str = None) -> list[str]:
    processed_names = []
    for name in name_list:
        if front == None: start = -1
        else: start = name.find(front)
        if back == None: end = len(name_list) - 1
        else: end = name.find(back, start + 1)
        processed_names.append(name[start + 1: end])
    return processed_names

def addNamespace(raw: list[str], namespace: str) -> list[str]:
    new_list = [namespace + line for line in raw]
    return new_list

if __name__ == '__main__':
    with open(PATH_PREFIX + 'src.txt', 'r', encoding='utf-8') as f:
        raw = f.read().splitlines()
        raw = filterLine(raw, '<td>')
        name_list = filterLine(raw, '<a href="/zh/wiki/')
        id_list = filterLine(raw, '<code>')
        name_list = selectPeriod(name_list, '>', '<')
        id_list = selectPeriod(id_list, back='<')
        id_list = addNamespace(id_list, 'minecraft:')
        data = {}
        data['values'] = id_list
    
    with open(PATH_PREFIX + 'result.txt', 'w', encoding='utf-8') as f:
        f.write(dumps(data, indent=4))
