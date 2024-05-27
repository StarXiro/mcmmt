'''
Date: 2024-05-27 18:17:41
Author: DarkskyX15
LastEditTime: 2024-05-27 19:29:07
'''

# NEED MODULE
# PyAutoGUI
# Pillow
# Keyboard

import pyautogui as pag
from PIL.ImageGrab import grab
import keyboard

HEX_MAP = {'0': 0, '1': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6,
           '7': 7, '8': 8, '9': 9, 'A': 10, 'B': 11, 'C': 12, 'D': 13, 'E': 14, 'F': 15}

def process_rgb(r: int, g: int, b: int) -> int:
    oct_color = 0
    oct_color |= r
    oct_color <<= 8
    oct_color |= g
    oct_color <<= 8
    oct_color |= b
    return oct_color

def process_hex_value(cmd: str) -> bool:

    def to_oct(two: str) -> int:
        return HEX_MAP[two[0]] * 16 + HEX_MAP[two[1]]

    cmd = cmd[1:7]
    if len(cmd) < 6: return False
    cmd = cmd.upper()
    r = to_oct(cmd[0:2])
    g = to_oct(cmd[2:4])
    b = to_oct(cmd[4:6])
    print(f'R:{r} G:{g} B:{b}')
    print(f'MCColor: {process_rgb(r, g, b)}')
    return True

def process_separated_cmd(cmd: str) -> bool:
    args = cmd.split(' ')
    if len(args) < 3: return False
    try:
        args = [int(arg) for arg in args]
    except ValueError:
        return False
    print(f'MCColor: {process_rgb(args[0], args[1], args[2])}')
    return True

def pick_screen_color() -> bool:

    def hotkey_callback():
        mouse_x, mouse_y = pag.position()
        print(f'Mouse coordinate: {mouse_x}, {mouse_y}')
        image = grab()
        pixel = image.getpixel((mouse_x, mouse_y))
        print(f'Pixel at Mouse: {pixel}')
        print(f'MC Color: {process_rgb(*pixel)}')

    print('Press Alt+P to get color at the position of your mouse.')
    keyboard.add_hotkey('alt+p', hotkey_callback)
    keyboard.wait('alt+p')
    return True

if __name__ == '__main__':
    print("Input #HEX color or RGB separated by space,\n or 'pick' to pick screen color")
    while True:
        cmd = input('>>> ')
        if len(cmd) <= 0:
            continue
        else:
            if cmd[0] == '#':
                if not process_hex_value(cmd):
                    print('Failed...')
            elif cmd == 'pick':
                if not pick_screen_color():
                    print('Failed...')
            elif ' ' in cmd:
                if not process_separated_cmd(cmd):
                    print('Failed...')
            elif cmd == 'exit':
                break
            else:
                print('Failed...')
        
    