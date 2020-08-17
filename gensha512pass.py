#!/bin/python

import random
import string
import crypt
import sys

if sys.version_info[0] < 3:
    print("Looks like you are using Python 2, running Python 2 compatible code\
 instead")
    passwd = raw_input("Enter password to digest: ")

    randomsalt = ''.join(random.sample(string.ascii_letters, 8))
    print(crypt.crypt(passwd, '$6$%s$' % randomsalt))

else:
    passwd = input("Enter password to digest: ")
    print(crypt.crypt(passwd, crypt.METHOD_SHA512))
