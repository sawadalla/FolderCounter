program logic:

get all the folder in the main directory using os.walk() and store it in a list dirs
loop through each element in dirs. if the current element starts with "ABC" , then append it to a list names ABC. if it starts with "XYZ" append it to a list named XYZ. it is starts with "123" append it to a list names _123
loop through ABC, get all the files in the current folder using os.walk and print it.
repeat the above step for XYZ and _123
program:

import os

dirs = next(os.walk("./"))[1]
ABC = []
XYZ = []
_123 = []
for x in dirs:
if x[0:3] == "ABC":
ABC.append(x)
elif x[0:3] == "XYZ":
XYZ.append(x)
elif x[0:3] == "123":
_123.append(x)

print("Files in important folders:")
for x in ABC:
print(f"{x}:")
for y in os.walk(f"./{x}"):
for file in y[2]:
print(file)
print()
for x in XYZ:
print(f"{x}:")
for y in os.walk(f"./{x}"):
for file in y[2]:
print(file)
print()
for x in _123:
print(f"{x}:")
for y in os.walk(f"./{x}"):
for file in y[2]:
print(file)

1 import os 2 3 dirs = next(os.walk(./))[1] 4 ABC = [] 5 XYZ = [] 6 123 = [] 7 for x in dirs: 8 if x[0:3] == ABC: 9 ABC.a

27 28 29 30 31 32 print() for x in 123: print(f{x}:) for y in os.walk(f./{x}): for file in y[2] : print(file)

sample directory used:
123fol 3 items 03:28 ABC1 3 items 03:26 ABC2 3 items 03:27 Application Report 2 27 items 11 Mar common 9 items 4 Jun Gender-a

output:

Files in important folders: ABC1: 2.CSV 1.CSV 11.csv ABC2: account1.py Account.class api1.py XYZ12: bfs ArrayMethods.class ar

Comment 
