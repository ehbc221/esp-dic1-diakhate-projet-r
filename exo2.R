#Exercice 2

#1 X suit une loi binomiale

#2Probabilite associee a X
p=44.7/100
k=c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31)
n=31
px=dbinom(k,n,p)

#2Trace du diagramme en baton
graphics.off()
plot(px,type='h')
points(px,col=1,pch=16) 

#3Trace de la fonction de repartition Fx
Fx=cumsum(px)
  graphics.off()
  plot(Fx,type='s')
  points(Fx,col=1,pch=16)


#4Calcul de P(X=17)
p17=dbinom(17,n,p)


#5Probabilite que 13 eleves utilisent facebook
PXsup12=1-Fx[13]


#6Probabilite que X soit superieur ou egal a 11
pXsup10=1-Fx[11]

#7 Probabilite que X superieure ou egale a 11
pr=0
for(i in 16:19)
{
	pr=pr+px[i]
}