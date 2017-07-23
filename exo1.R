#Exercice 1

#cette fonction permet de calculer l'esperance.Elle sera utilisee lors du calcul du moment.
Esp<-function(x,px)
{
  return(sum(px*x))
}
#calcul du moment
moment <- function(x,r,px,centrer)
{
  if (centrer==FALSE)
  {
    return (Esp(x^r,px))
  }
  else
  {
    t=(x-Esp(x,px))^r
    return(Esp(t,px))
  }
}
#Application
p=0.02
k=c(0,1,2,3,4,5,6,7,8)
n=20
px=dbinom(k,n,p)
m=moment(k,2,px,TRUE)