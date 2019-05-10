X = as.Matrix(read.csv("C:/Users/fhanab/Desktop/data_CSIC/train.4", header = F))
n = 256                      
H = diag(n) - 1/n * rep(1,n) %*% t(rep(1,n))
Xhat = X %*% H 
svd1 = svd(Xhat)
#pca dirction matrix(api:p by i)
ap1 = svd1$u[, 1]
ap2 = svd1$u[, 1:2]
ap5 = svd1$u[, 1:5]
ap10 = svd1$u[, 1:10]
ap50 = svd1$u[, 1:50]
#accumlation of Top-k PCA
singv = svd1$d
plot(singv/sum(lambda),type="o") lamda = 1 . 

[Previously saved workspace restored]

> plot(singv/sum(1),type="o")
> plot(singv/sum(2),type="o")
> 
  > plot(singv/sum(20),type="o")
> plot(singv/sum(256),type="o")
> par(mfrow=c(2,3))
> imdata = matrix(X[,3], 16, 16)
Warning message:
  In matrix(X[, 3], 16, 16) :
  data length [652] is not a sub-multiple or multiple of the number of rows [16]
> imdata = matrix(X[,3], 4, 4)
> image(imdata, xlab = "original")
> imdata = matrix(X[,3], 8, 8)
Warning message:
  In matrix(X[, 3], 8, 8) :
  data length [652] is not a sub-multiple or multiple of the number of rows [8]
> imdata = matrix(X[,3], 4, 4)
> immean = matrix(Xcm,16,16)
Error in matrix(Xcm, 16, 16) : object 'Xcm' not found
> immean = matrix(4,16,16)
> image(immean, xlab = "just mean")
> imapprox1 <- matrix((approx1)[,2], 16, 16) + immean
Error in matrix((approx1)[, 2], 16, 16) : object 'approx1' not found
> imapprox1 <- matrix((approx1)[,2], 16, 16) + immean
Error in matrix((approx1)[, 2], 16, 16) : object 'approx1' not found
> imapprox1 <- matrix([,2], 16, 16) + immean
Error: unexpected '[' in "imapprox1 <- matrix(["
> imapprox1 <- matrix(2, 16, 16) + immean
> image(imapprox1, xlab = "one component")
> imapprox5 <- matrix((approx5)[,2], 16, 16) + immean
Error in matrix((approx5)[, 2], 16, 16) : object 'approx5' not found
> imapprox5 <- matrix(2, 16, 16) + immean
> image(imapprox5, xlab = "five component")
> 