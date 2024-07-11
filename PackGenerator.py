'''
Date: 2024-06-04 20:08:41
Author: DarkskyX15
LastEditTime: 2024-06-06 14:56:51
'''

import os
from logger import ThreadLogger, LoggerWrapper

def get_multi_paths(folder_path: str) -> tuple[list[str], list[str]]:
    r"""
    返回一对路径列表:`(file_paths, folder_paths)`
    - `file_paths`:`folder_path`下所有文件的路径列表
    - `folder_paths`:`folder_path`下所有文件夹的路径列表 (包括`folder_path`本身)
    """
    file_path_list = []
    folder_list = []
    for filepath, _, filenames in os.walk(folder_path):
        for filename in filenames:
            file_path_list.append(os.path.join(filepath, filename))
        folder_list.append(filepath)
    return (file_path_list, folder_list)

class BaseModifier:
    """修饰器基类"""
    def __init__(self, text_line: str) -> None:
        pass

    @staticmethod
    def check_construct(text_line: str) -> bool:
        """检查是否构造修饰器"""
        if text_line:
            return True
        return False

    def check_modify(self, text_line: str) -> bool:
        """检查是否修改"""
        if text_line:
            return True
        return False
    

class ModuleObject:
    pass

class FileObject:
    pass

class GameModule(ModuleObject):
    pass

class CoreModule(ModuleObject):
    pass

class MapModule(ModuleObject):
    pass

class ValueModifier(BaseModifier):
    pass

class EventModifier(BaseModifier):
    pass

class FunctionObject(FileObject):
    pass

class EventTrigger(FunctionObject):
    pass

class GameTrigger(FunctionObject):
    pass

class IOManager:
    """控制文件读入输出"""
    __logger: LoggerWrapper
    __file_paths: list[str]
    __folder_paths: list[str]

    def __init__(self, root_path: str) -> None:
        self.__file_paths, self.__folder_paths = get_multi_paths(root_path)
        logger = ThreadLogger(False)
        self.__logger = logger.getWrapperInstance('Main')
        logger.startLogThread()
        self.__logger.info('Logs:', self.__file_paths, self.__folder_paths)

    def end_logger(self) -> None:
        """结束日志输出线程"""
        self.__logger.stopLogger()


if __name__ == '__main__':
    io_manager = IOManager('.\\resources')

    io_manager.end_logger()
