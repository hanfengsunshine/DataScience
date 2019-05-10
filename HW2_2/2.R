library(Rdonlp2)
k = 20
n = 20
norm1 = function(x) { sum(abs(x)) }
pmatrix=matrix(NA,k,n)
for (k in 1:20){
  for (n in 1:20){
    pro = 0
    for (t in 1:50)
    {
      x0=rep(0,20)
      s = sample(20,k)
      x0[s] = sample(c(-1,1),k,r=T)
      A = matrix(rnorm(20*n),nrow=n)
      b = A %*% x0
      p = rep(1,20)
      xhat=donlp2(p,fn = norm1, A = A, lin.l = b, lin.u = b)$par
      if (sum(xhat-x0)^2<=10e-3) pro = pro+1 			
    }
    pmatrix[k,n] = pro/50
  }
}
contour(x=1:20,y=1:20,pmatrix,xlab='k',ylab='n',main='success prob p(n,k)',col="blue")
