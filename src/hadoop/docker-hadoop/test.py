#!/bin/python3

# import math
# import os
# import random
# import re
# import sys

# if __name__ == '__main__':
#     n = int(input())
#     if (n % 2 != 0) and n >= 1 and n <= 100:
#         print("Weird1")
#     elif n % 2 == 0 and n >= 1 and n <= 100:
#         if n in range(1,6):
#             print("Not Weird1")
#         elif n in range(5,21):
#             print("Weird2")
#         elif n > 20:
#             print("Not Weird2")
#         else:
#             print("NA")
#     else:
#         print("Invalid Number")

def is_leap(year):
    leap = False
    
    print(year % 4)
    print(year % 100)
    print(year % 400)
    if year in range(1900, ((10 ** 5) + 1)):
        if year % 4 == 0:
            if year % 100 != 0 and year % 400 != 0:
                leap = True
            if year % 100 == 0 and year % 400 == 0:
                leap = True
    
    return leap

year = int(input())
print(is_leap(year))