import mysql.connector
import numpy as np
from scipy import spatial


def SimilariteCosinus(idU1,idU2):
    return (1-spatial.distance.cosine(matriceNotes[idU1],matriceNotes[idU2]))



 
conn = mysql.connector.connect(host="localhost",user="root",password="", database="psrec")


cursor=conn.cursor()

cursor.execute( "SELECT count(*) FROM utilisateurs" )  

for res in  cursor.fetchall():
    nbuser=res[0]
    
    
print(nbuser)



cursor.execute("SELECT count(*) FROM claviers")
for res1 in cursor.fetchall():
    nbproduit=res1[0]
    
print(nbproduit)


cursor.execute("select * from notes")


matriceNotes=np.zeros((nbuser,nbproduit))
print(matriceNotes)


for ligne in cursor.fetchall():
    j=0
    print("idPdt",ligne[1])
    print("iduser",ligne[0])
    print("note",ligne[2])
    print("------------------")
    ix=ligne[1]
    i=int(ix[1:])-1
    if(ligne[0]=='fadhel'):
        j=1
    elif(ligne[0]=='rihab'):
        j=2
    elif(ligne[0]=='yassine'):
        j=3 
    matriceNotes[j][i]=ligne[2]


    
matriceSimUser=np.zeros((nbuser,nbuser)) 
matriceSimUser1=np.zeros((nbuser,nbuser)) 

for u1 in range(nbuser):
    for u2 in range(nbuser):
       matriceSimUser[u1][u2]=SimilariteCosinus(u1,u2)
print(matriceSimUser)
print(matriceNotes)
f = open("C:/wamp/www/web/images/claviers/matriceSimUser.txt", "w")
np.savetxt('C:/wamp/www/web/images/claviers/matriceSimUser.txt',matriceSimUser,fmt='%.2f',delimiter=",")
f = open("C:/wamp/www/web/images/claviers/matricenotes.txt", "w")
np.savetxt('C:/wamp/www/web/images/claviers/matricenotes.txt',matriceNotes,fmt='%.2f',delimiter=",")











#for u1 in range(nbuser):
 #  for u2 in range(nbuser):
  #  matriceSimUser1[u1][u2]=cosine_distance(u1,u2)
#print(matriceSimUser1)
#print("----------------------")
#print(matriceSimUser)  
#f = open("C:/wamp64/www/projetweb/matricecollaboratif.txt", "w")
#np.savetxt('C:/wamp64/www/projetweb/matricecollaboratif.txt',matriceSimUser,fmt='%.2f',delimiter=",")
#conn.close()