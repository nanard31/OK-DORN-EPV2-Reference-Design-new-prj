# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
filin = open("/temp/coef.txt", "r")
filout = open("/temp/out.txt", "w")
lignes = filin.readlines()

# for ligne in lignes:
#     #for i in range(4):        
#             print('"',ligne.rstrip())
#             filout.write(ligne.rstrip())
#             #filout.write("\r")

# for n in range(64):
# #     filout.write('\r')#return write file
#     for i in range(n*4,4+n*4):
#         value=lignes[i].replace(',',' ')
#         print(bin(int(value))) # showing string to bin format
#         filout.write('"')
#         filout.write(bin(int(value))) # string conv to int to bin in write file         

for n in range(64):
    filout.write('\r')#return write file
    print(n)
    for i in range(n*4,4+n*4):
        print(i)    
        #print(lignes[i].rstrip())

        #filout.write(bin(int(value).rstrip()))
        if i == n*4:
            
            value=lignes[i].replace(',',' ')
            print(bin(int(value))) # showing string to bin format
            filout.write('"')
            filout.write('0000000')
            filout.write(bin(int(value))) # string conv to int to bin in write file
        elif i == 1+n*4:
            
            value=lignes[i].replace(',',' ')
            print(bin(int(value))) # showing string to bin format
            filout.write(',')
            filout.write('0000000')
            filout.write(bin(int(value)))
        elif i == 2+n*4: 
            
            value=lignes[i].replace(',',' ')
            print(bin(int(value))) # showing string to bin format
            filout.write(',')
            filout.write('0000000')
            filout.write(bin(int(value)))     
        elif i == 3+n*4: 
            
            value=lignes[i].replace(',',' ')
            print(bin(int(value))) # showing string to bin format
            filout.write(',')
            filout.write('0000000')
            filout.write(bin(int(value))) 
            filout.write(',"&') # showing string to bin format
            
   
filin.close()
filout.close()
    
# while lignes != "":
#             print(lignes)
#             lignes = filin.readline()
#             filout.write(lignes)
# filin.close()
# filout.close()

# for i in range(4):
#     print("i a pour valeur", i)
#     string[i]=ligne.rstrip()    