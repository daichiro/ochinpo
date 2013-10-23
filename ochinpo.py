#!/usr/bin/env python
# coding: UTF-8
# For python 2.x
import sys
import random

def main():
    str = ['お', 'ち', 'ん', 'ぽ']
    complete = 0
    cnt = 0
    rnd = 0
    while complete < 4:
        cnt += 1
        rnd = random.randint(0, 3)
        sys.stdout.write(str[rnd])
        complete = complete+1 if rnd == complete else 0
    print ""
    print cnt, "回目で完成しました"

if __name__ == '__main__':
    main()
