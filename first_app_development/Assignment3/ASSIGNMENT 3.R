# assignment 3#
#*************CODE 1*********#

vec1 <- seq(1,100,2)
vec1

#*************code 2**********#
vec2 <- c(1,2,3,4,5,8,6,2,11)

class(vec2)
mat1 <- matrix(vec2,nrow=3,ncol=3,byrow=TRUE)
mat1
class(mat1)


#************CODE 3***********#
a <- c(NA,11:15,NA,NA)
a
mean(a,na.rm=T)
class(a)

#************CODE 4**********#

x= c("apple","banana","grape")
x
class(x)
sub("a","$",x)

#*******END*************#