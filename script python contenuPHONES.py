# -*- coding: utf-8 -*-
"""
Created on Sun Jun 14 20:11:51 2020

@author: Ayoub
"""


import mysql.connector 
import nltk
from nltk.stem.snowball import FrenchStemmer
from nltk.corpus import stopwords
import numpy as np
from scipy import spatial

def SimilariteCosinus(idpdt1,idpdt2):
    return (1-spatial.distance.cosine(matriceBin[idpdt1],matriceBin[idpdt2]))

conn=mysql.connector.connect(host="localhost",user="root",password="",database="psrec")

cursor=conn.cursor()

cursor.execute("select * from smartphones")
stop=set(stopwords.words('french'))
stop=list(stop)
stop.extend([".",",","-","_",";","?","!","(",")",":" ,"''"])
stemmer=FrenchStemmer()
nbrpdt=0
dictMot={}


Totalitemot=set()
for ligne in cursor.fetchall():
    nbrpdt+=1
    print("ID Produit: ",ligne[0])
    print("Description Produit: ",ligne[2])
    print("Prix Produit: ",ligne[3])
    Desc=ligne[2]
    mots=nltk.word_tokenize(Desc)
    print(mots)
    Mots=[m for m in mots if m not in stop]
    motstem=[]
    for m in Mots:
        motstem.append(stemmer.stem(m))
    print("---------------------------")
    print(motstem)
    for m in motstem:
        Totalitemot.add(m)
    dictMot[ ligne[0] ]= motstem
        
Nbmots=len(Totalitemot)
matriceBin=np.zeros((nbrpdt,Nbmots))

for i in range (nbrpdt):
    j=0
    for m in Totalitemot:
        idpdt="sp"+str(i+1)
        if m in dictMot[idpdt]:
            matriceBin[i][j]=1
        j+=1
        
matriceSimilariteBin=np.zeros((nbrpdt,nbrpdt))

for s in range(nbrpdt):
    for z in range(nbrpdt):
        matriceSimilariteBin[s][z]=SimilariteCosinus(s,z)
print( matriceSimilariteBin)
f = open("C:/wamp/www/web/images/Phones/testphones.txt", "w")
np.savetxt('C:/wamp/www/web/images/testphones.txt',matriceSimilariteBin,fmt='%.2f',delimiter=",")

for s in range(nbrpdt):
    maxi=0
    IdPdtMax=""
    for z in range(nbrpdt):
        if(matriceSimilariteBin[s][z]>maxi) and (matriceSimilariteBin[s][z] <1):
            maxi=matriceSimilariteBin[s][z]
            IdPdtMax="p"+str(z+1)
    print("Top 1 du pdt",str(s+1),"est ",IdPdtMax)
    
    
    
    
    
    

        
     

        
        

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
