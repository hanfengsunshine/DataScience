> n=200
> s=0
> for (i in 1:200) {s=s+i}
> set.seed(10)
> e=rnorm(s,sd=sqrt(1/(4*n)))
> 
  > ## construct a p by p matrix with desirable dist.
  > W=matrix(0,200,200)
  > t=1
  > for (i in 1:200)
    + {   for (j in 1:200)
      +       {  if (i<=j)  
        + { W[i,j]=e[t]
        +   t=t+1 }
        +       }
      + }
  > for (i in 1:200)
    + {   for (j in 1:200)
      +       {  if (i>j)  W[i,j]=W[j,i]  }
      + }
  > 
    > ## compute the eigenvalue
    > eval=eigen(W)$values
    > hist(eval,breaks=seq(-1,1,0.05),xlim=c(-1.2,1.2),ylim=c(0,1),freq=F)
    > 
      > ## add the semi-circle function
      > x=seq(-1,1,0.01)
      > y=2/pi*sqrt(1-x^2)
      > lines(x,y,col="blue")
      > 