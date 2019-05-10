a = c(0,5796,7144,14489,7483,6609,7067,5796,0,1970,9010,5796,953,3295,7144,1970,0,7391,2890,2098,1724,14489,9010,7391,0,7953,8418,7482,7483,5796,2890,7953,0,1157,4608,6609,953,2098,8418,1157,0,3723,7067,3295,1724,7482,4608,3723,0)

Y = matrix(a, nrow = 7, ncol = 7)
H =diag(7) - 1/7 * rep(1,7) %*% t(rep(1,7))
B= -1/2 * H %*% Y %*% t(H)

lambda = diag(eigen(B)$value)
u = eigen(B)$vectors
u2 = u[,1:2]
lambda2 = lambda[1:2,1:2]
MDS = sqrt(lambda2) %*% t(u2)

mds_1 = MDS[1,]
mds_2 = MDS[2,]

citynames = c('Moscow','Beijing','HK','Canberra','Tokyo','Seoul','Bangkok')
plot(mds_1,mds_2)
text(mds_1,mds_2,citynames)
