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

