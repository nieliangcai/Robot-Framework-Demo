# import re
#
#
# a = "22135612539856932332171322183769807546985463"
# air = "sdfagsdh vsrew yhjnasd fnpiuj; knqjhiu h;fmnmsadb'f , g/mda"
# d=a.count("2",0)
# b  = re.match('22',a)
# c =  re.search('183',a)
# print(b,c,d)
# print(air.count(';'))
# if air.count((';')) == 2:
#     print('Good')
# else:
#     print("NG")
import re

with open('search.txt','r') as f:
    lines = f.readlines()
    string = ''
    for i in range(len(lines)):
        line = lines[i].strip('\n')
        string += line
    print(string.count(' '))

