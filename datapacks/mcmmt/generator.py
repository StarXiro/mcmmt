'''
Date: 2024-05-11 20:45:58
Author: DarkskyX15
LastEditTime: 2024-05-23 14:44:45
'''

from os import walk as _walk
from os.path import join as _join
from logger import ThreadLogger
import os

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

def readConfigFile(path: str) -> dict[str, str]:
    config_dict = {}
    with open(path, 'r', encoding='utf-8') as f:
        config_lines = f.read().splitlines()
    for line in config_lines:
        setting_pair = line.split(' ')
        config_dict[setting_pair[0]] = setting_pair[1]
    return config_dict

def safeMatch(src: str, match: str) -> bool:
    if len(src) < len(match): return False
    return src[:len(match)] == match

def cmdReplace(cmd: str, identifier: str, value: str) -> str:
    return cmd.replace(f'$({identifier})', value)

def shortLine(raw: str, length: int = 70) -> str:
    if len(raw) > length - 3:
        raw = raw[:length - 3] + '...'
    return raw

def copyFile(source: str, target: str) -> None:
    with open(source, 'rb') as rf, open(target, 'wb') as wf:
        dt = rf.read(1024)
        while dt:
            wf.write(dt)
            dt = rf.read(1024)

class Game:
    def __init__(self, game_name: str) -> None:
        self.game_name: str = game_name
        self.launch_path: str = None
        self.uninstall_path: str = None
        self.install_path: str = None
        self.stop_path: str = None
        self.value_dict: dict[str, str] = {}

# Paths
DATA_PATH = '.\\data'
GENERATE_PATH = '.\\generated'
SRC_PATH = '.\\resources'

# Settings
PUT_TO_DATA = False
MAP_NAME = 'mmt_map'
CORE_NAME = 'mmt_core'

# Global var
thread_logger = ThreadLogger()
logger = thread_logger.getWrapperInstance('/')
thread_logger.startLogThread()
games: list[Game] = []
binding_writers = []
binding_provides: list[dict] = []
map_config = {}
event_writers = {}
SAVE_PATH: str = ''

def processFuncFile(src_path: str, target_path: str, game: Game, namespace: str, re_path: str) -> None:
    
    # make function id
    function_id = re_path.removeprefix('\\functions\\')
    function_id = '/'.join(function_id.split('\\'))
    function_id = f'{namespace}:{function_id}'.removesuffix('.mcfunction')
    logger.info('Make function id:', function_id)

    # open source
    with open(src_path, 'r', encoding='utf-8') as f:
        src_cmds = f.read().splitlines()
    
    # search events
    event_signs = []
    for cmd in src_cmds:
        if not cmd: continue
        if cmd[0] != '#': continue
        if safeMatch(cmd, '#~EVENT'):
            event_sign = cmd.split()[-1]
            for event in event_sign.split('/'):
                if event not in event_signs:
                    event_signs.append(event)
    logger.info('Need events:', event_signs)

    # register events
    for event in event_signs:
        e_writer = event_writers.get(event, None)
        if e_writer == None:
            logger.warn('Can not find event:', event)
        else:
            logger.info('Register event:', event)
            e_writer.write(f'function {function_id}\n')

    # Search vars
    variable_dict = {}
    for cmd in src_cmds:
        if not cmd: continue
        if cmd[0] != '#': continue
        if safeMatch(cmd, '#~VARIABLE'):
            cmd_args = cmd.split()
            if len(cmd_args) < 3:
                logger.warn('Invalid variable format:', cmd)
                continue
            replace_var = game.value_dict.get(cmd_args[2], None)
            if replace_var == None:
                logger.warn(f'Can not bind with {cmd_args[2]} which is None')
                continue
            else:
                variable_dict[cmd_args[1]] = replace_var
    logger.info('Variables:', variable_dict)

    # replace vars & write target
    target_output = open(target_path, 'w', encoding='utf-8')
    for cmd in src_cmds:
        if not cmd: continue
        if safeMatch(cmd, '#~$'):
            cmd_args = cmd.split()
            if len(cmd_args) < 2:
                logger.warn('Invalid valued command format:', cmd)
                continue
            command = ' '.join(cmd_args[1:])
            for item in variable_dict.items():
                command = cmdReplace(command, *item)
            logger.info('Replaced command:', shortLine(command))
            target_output.write(command + '\n')
        else:
            target_output.write(cmd + '\n')
    target_output.close()

def createDirStruct(root: str, namespace: str, save_path: str) -> None:
    _, folders = getMultiPaths(root)
    for folder in folders:
        relevant = folder.removeprefix(root)
        if not relevant: relevant = '\\'
        folder_path = save_path + '\\' + namespace + relevant
        os.mkdir(folder_path)
        logger.info('Make dir:', folder_path)

def processModule(root: str, namespace: str, save_path: str) -> None:
    file_names, folders = getMultiPaths(root)
    for folder in folders:
        relevant = folder.removeprefix(root)
        if not relevant: relevant = '\\'
        folder_path = save_path + '\\' + namespace + relevant
        os.mkdir(folder_path)
        logger.info('Make dir:', folder_path)
    # Check config
    try:
        config = readConfigFile(_join(root, 'config.txt'))
    except FileNotFoundError:
        logger.error('Can not find config.txt in module:', namespace)
        return
    # IGNORED setting
    try:
        if config['IGNORED'] == 'true':
            logger.info('Skip processing for', namespace)
            return
    except KeyError:
        logger.warn('Can not find IGNORED setting, default false')
    # GAME_NAME setting
    try:
        game_name = config['GAME_NAME']
        game_name = ' '.join(game_name.split('_'))
        logger.info('Found game name:', game_name)
    except KeyError:
        logger.error('Can not find game name for module:', namespace)
        return
    # Create game instance
    game = Game(' '.join(game_name.split('_')))
    
    # Set values
    if len(binding_provides) < 1:
        logger.warn('Can not get value from binding!')
    else:
        for item in binding_provides.pop(0).items():
            game.value_dict[item[0]] = item[1]
        logger.info('Extend value dict with provided value:', game.value_dict)
    for item in config.items():
        if item[0] != 'IGNORED' and item[0] != 'GAME_NAME':
            arg = item[1].split('|')
            if len(arg) == 2 and arg[0] == 'BIND':
                game.value_dict[item[0]] = map_config.get(item[0], arg[1])
            else:
                game.value_dict[item[0]] = arg[0]
    logger.info('Game variables:', game.value_dict)

    function_validation = 0
    # Check launch.mcfunction
    launch_path = root + '\\functions\\launch.mcfunction'
    if os.path.exists(launch_path):
        logger.info('Found launch function:', launch_path)
        game.launch_path = launch_path
        function_validation += 1
        
    # Check stop.mcfunction
    stop_path = root + '\\functions\\stop.mcfunction'
    if os.path.exists(stop_path):
        logger.info('Found stop function:', stop_path)
        game.stop_path = stop_path
        function_validation += 1

    # Check install.mcfunction
    install_path = root + '\\functions\\install.mcfunction'
    if os.path.exists(install_path):
        logger.info('Found install function:', install_path)
        game.install_path = install_path
        function_validation += 1
        
    # Check uninstall.mcfunction
    uninstall_path = root + '\\functions\\uninstall.mcfunction'
    if os.path.exists(uninstall_path):
        logger.info('Found uninstall function:', uninstall_path)
        game.uninstall_path = uninstall_path
        function_validation += 1
    if function_validation < 4:
        logger.error('Function requirement not met! Skip processing.')
        return
    
    # write launch to binding
    if len(binding_writers) < 1:
        logger.warn('Can not get binding writer!')
    else:
        b_writer = binding_writers.pop(0)
        logger.info('Write launch with writer:', shortLine(str(b_writer), 60))
        b_writer.write(f'\nfunction {getFuncID(launch_path)}\n')
        b_writer.close()
    
    # push game
    games.append(game)

    # select function files
    func_files: list[str] = []
    other_files: list[str] = []
    for func_name in file_names:
        if func_name.split('.')[-1] == 'mcfunction':
            func_files.append(func_name)
        else:
            other_files.append(func_name)

    # process function files
    for file_name in func_files:
        basename = file_name.split('\\')[-1]
        if basename == 'config.txt': continue
        logger.info('')
        logger.info('Processing function file:', basename)
        processFuncFile(file_name, save_path + '\\' + namespace + file_name.removeprefix(root),\
                    game, namespace, file_name.removeprefix(root))

    # move other files
    logger.info('')
    for file_name in other_files:
        basename = file_name.split('\\')[-1]
        if basename == 'config.txt': continue
        logger.info('Copy file:', basename)
        copyFile(file_name, f'{save_path}\\' + file_name.removeprefix(SRC_PATH + "\\"))

def getFuncID(raw_path: str) -> str:
    func_id = raw_path.removeprefix(SRC_PATH + '\\')\
        .removesuffix('.mcfunction').split('\\')
    func_id = f'{func_id[0]}:{"/".join(func_id[2:])}'
    return func_id

def processCore() -> None:

    def mergeInserts(read_path: str, save_path: str, inserts: list[str]) -> None:
        output_lines: list[str] = []
        logger.info('From:', read_path)
        logger.info('To:', save_path)
        logger.info('With:', shortLine(str(inserts)))
        with open(read_path, 'r', encoding='utf-8') as f:
            line = f.readline()
            line_count = 1
            insert_found = False 
            while line:
                output_lines.append(line)
                if safeMatch(line, '#~INSERT'):
                    insert_found = True
                    logger.info('Insert sign found at line', line_count)
                    break
                line = f.readline()
                line_count += 1
            if not insert_found:
                logger.error('Failed to find insert sign!')
                return
            for cmd in inserts:
                output_lines.append(cmd + '\n')
            line = f.readline()
            while line:
                output_lines.append(line)
                line = f.readline()
        logger.info('Insertion success.')
        with open(save_path, 'w', encoding='utf-8') as f:
            f.writelines(output_lines)
            logger.info('Write to file.')

    logger.info('-------------------------------------')
    logger.info('Processing core...')
    install_cmds = []
    uninstall_cmds = []
    stop_cmds = []

    for game in games:
        logger.info('Merge interfaces for game:', game.game_name)
        install_cmds.append(f'function {getFuncID(game.install_path)}')
        uninstall_cmds.append(f'function {getFuncID(game.uninstall_path)}')
        stop_cmds.append(f'function {getFuncID(game.stop_path)}')

    logger.info('')
    logger.info('Inserting install interface...')
    mergeInserts(f'{SRC_PATH}\\{CORE_NAME}\\functions\\install.mcfunction', 
                 f'{SAVE_PATH}\\{CORE_NAME}\\functions\\install.mcfunction',
                 install_cmds)
    
    logger.info('')
    logger.info('Inserting stop & uninstall interface...')
    stop_and_uninstall = []
    for i in range(len(stop_cmds)):
        stop_and_uninstall.append(stop_cmds[i])
        stop_and_uninstall.append(uninstall_cmds[i])
    mergeInserts(f'{SRC_PATH}\\{CORE_NAME}\\functions\\uninstall.mcfunction',
                 f'{SAVE_PATH}\\{CORE_NAME}\\functions\\uninstall.mcfunction',
                 stop_and_uninstall)
    
    # move other files
    logger.info('')
    all_files, _ = getMultiPaths(f'{SRC_PATH}\\{CORE_NAME}')
    absolute_prefix = f'{SRC_PATH}\\{CORE_NAME}\\'
    for file_path in all_files:
        re_path = file_path.removeprefix(absolute_prefix)
        # exclude install / uninstall and verbs
        if not (safeMatch(re_path, 'functions\\verbs') or
                safeMatch(re_path, 'functions\\install.mcfunction') or
                safeMatch(re_path, 'functions\\uninstall.mcfunction') or
                safeMatch(re_path, 'config.txt')):
            basename = file_path.split('\\')[-1]
            logger.info('Copy file:', basename)
            copyFile(file_path, SAVE_PATH + file_path.removeprefix(SRC_PATH))

def processBindingFile(src: str) -> None:
    logger.info('Processing binding:', src.split('\\')[-1])
    with open(src, 'r', encoding='utf-8') as f:
        cmd_lines = f.read().splitlines()
    # Get provide values
    provide_values = {}
    for cmd_line in cmd_lines:
        if not safeMatch(cmd_line, '#~PROVIDE'):
            continue
        args = cmd_line.split()
        if len(args) < 3:
            logger.warn('Invalid provide format:', cmd_line)
            continue
        provide_values[args[1]] = args[2]
    binding_provides.append(provide_values)
    logger.info('Provide values:', provide_values)

    # Copy to generated
    copyFile(src, SAVE_PATH + src.removeprefix(SRC_PATH))
    # Get writer
    f = open(SAVE_PATH + src.removeprefix(SRC_PATH), 'a', encoding='utf-8')
    binding_writers.append(f)

def processMap() -> None:
    # Get all paths
    file_paths, _ = getMultiPaths(f'{SRC_PATH}\\{MAP_NAME}')
    
    # Get function & other file paths
    func_paths: list[str] = []
    other_paths: list[str] = []
    for file_path in file_paths:
        re_path = file_path.removeprefix(f'{SRC_PATH}\\{MAP_NAME}\\')
        if not (safeMatch(re_path, 'functions\\bindings') or
                safeMatch(re_path, 'config.txt')):
            basename = re_path.split('\\')[-1]
            if basename.split('.')[-1] == 'mcfunction':
                func_paths.append(file_path)
            else:
                other_paths.append(file_path)
    
    # Process functions
    for func_path in func_paths:
        logger.info('Processing function file:', func_path.split('\\')[-1])
        with open(func_path, 'r', encoding='utf-8') as file_read:
            cmd_lines = file_read.read().splitlines()
        with open(SAVE_PATH + func_path.removeprefix(SRC_PATH), 'w', encoding='utf-8') as file_write:
            for cmd_line in cmd_lines:
                if safeMatch(cmd_line, '#~$'):
                    cmd_line = cmd_line.removeprefix('#~$ ')
                    for item in map_config.items():
                        cmd_line = cmdReplace(cmd_line, item[0], item[1])
                    logger.info('Replaced command:', shortLine(cmd_line))
                file_write.write(cmd_line + '\n')
    
    # Process other files
    for other_path in other_paths:
        logger.info('Copy file:', other_path.split('\\')[-1])
        copyFile(other_path, SAVE_PATH + other_path.removeprefix(SRC_PATH))

if __name__ == '__main__':
    SAVE_PATH = DATA_PATH if PUT_TO_DATA else GENERATE_PATH
    # Clean Cache
    logger.info('Deleting caches...')
    file_names, folder_names = getMultiPaths(SAVE_PATH)
    for file_name in file_names:
        os.remove(file_name)
        logger.info('Removed:', file_name)
    for dir_name in folder_names[:0:-1]:
        os.rmdir(dir_name)
        logger.info('Removed:', dir_name)
    
    # Create Map & Core Dirs
    logger.info('Creating map & core dirs...')
    createDirStruct(f'{SRC_PATH}\\{MAP_NAME}', MAP_NAME, SAVE_PATH)
    createDirStruct(f'{SRC_PATH}\\{CORE_NAME}', CORE_NAME, SAVE_PATH)

    # Get map config
    map_config = readConfigFile(SRC_PATH + f'\\{MAP_NAME}\\config.txt')
    game_volume = map_config.pop('VOLUME', None)
    if game_volume == None:
        logger.error('Cannot get game volume from map config!')
    logger.info('Loaded global values:', map_config)

    # Get event writer
    verb_path = f'{SRC_PATH}\\{CORE_NAME}\\functions\\verbs'
    verb_names, _ = getMultiPaths(verb_path)
    for verb in verb_names:
        verb_id = '.'.join(verb.removeprefix(verb_path + '\\')\
                   .removesuffix('.mcfunction').split('\\'))
        verb_f = open(verb, 'r', encoding='utf-8')
        existed = verb_f.read()
        verb_f.close()
        verb_f = open(f'{SAVE_PATH}{verb.removeprefix(SRC_PATH)}', 'w', encoding='utf-8')
        verb_f.write(existed + '\n')
        logger.info('Create event writer for:', verb_id)
        event_writers[verb_id] = verb_f

    # Processing map
    logger.info('')
    logger.info('Processing map...')

    # Search bindings
    binding_dir = f'{SRC_PATH}\\{MAP_NAME}\\functions\\bindings'
    bind_fallback = f'{SRC_PATH}\\{MAP_NAME}\\functions\\bind_fallback.mcfunction'
    logger.info('Search bindings at:', binding_dir)

    if not os.path.exists(binding_dir):
        logger.error("Bindings path doesn't exist!")
    else:
        file_bindings, _ = getMultiPaths(binding_dir)
        for file_binding in file_bindings:
            processBindingFile(file_binding)

    if not os.path.exists(bind_fallback):
        logger.error('Can not find fallback function at:', bind_fallback)

    # Process each dir
    namespaces = [namespace for namespace in os.listdir(SRC_PATH)\
                  if namespace != MAP_NAME and namespace != CORE_NAME]
    logger.info('')
    logger.info('Found modules:', namespaces)
    for namespace in namespaces:
        logger.info('-------------------------------------')
        logger.info('Processing module:', namespace)
        processModule(_join(SRC_PATH, namespace), namespace, SAVE_PATH)

    # Close event writer
    for writer in event_writers.values():
        writer.close()
    # fallback other bindings
    for writer in binding_writers:
        writer.write(f'\nfunction {MAP_NAME}:bind_fallback\n')
        writer.close()

    # Process core
    processCore()

    # adjust volume
    logger.info('----------------------------------------')
    logger.info('Final map processing...')
    if game_volume == None:
        game_volume = len(games)
    else:
        game_volume = int(game_volume)
    logger.info('Use game volume:', game_volume)

    # Create constants
    game_name_constants = [f'GAME_NAME_{i + 1}' for i in range(game_volume)]
    for i in range(game_volume):
        if i < len(games):
            map_config[game_name_constants[i]] = games[i].game_name
        else:
            map_config[game_name_constants[i]] = 'None'
    logger.info('Create game name constants:', shortLine(str(map_config), 60))

    processMap()

    logger.info('Generation finished!')
    
    logger.stopLogger()
    os.system('pause')
