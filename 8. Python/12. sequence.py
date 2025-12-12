#!/usr/bin/env python3

# mutable, list
x = [ 1, 2, 3, 4, 5 ]
# x[4] = 42
# x[0] = 42
# x[2] = 42

#immutable tuple
# x = ( 1, 2, 3, 4, 5 )
# x[4] = 42

#not mutable
# x = range(5)
# x = range(5, 10)
# x = range(5, 50, 5)

for i in x:
    print('i is {}'.format(i))

#dictionary
# x = {'one':1, 'two':2, 'three':3, 'four':4, 'five':5}
# x['three'] = 42
# for k, v in x.items():
#     print('k: {}, v: {}'.format(k, v))