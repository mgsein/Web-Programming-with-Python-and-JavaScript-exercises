#!/usr/bin/env python3

import platform

def main():
    message()

def message():
    print('This is python version {}'.format(platform.python_version()))
    # print('Print 2')
    # print('Print 3')
# print('3')

if __name__ == '__main__': main()
