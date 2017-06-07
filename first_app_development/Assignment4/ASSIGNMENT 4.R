###############CODE 1####################

#Create the vectors
(a) (2, 3, . , 29, 30)#

v1<-(2:30)
v1

#(b) (30, 29, . , 2)#

v2<-seq(30,2,-1)
v2

#(c) (1, 2, 3, .. , 29, 30, 29, 28, , 2, 1)#

v3<-c(1:30,seq(29,1,-1))
v3

#(d) (4, 6, 3) and assign it to the name dev.#


dev <-c(4,6,3)
class(dev)
dev

#(e) (5, 6, 7, 5, 6, 7, , 5, 6, 7) where there are 10 occurrences of 5.#

r1<-rep(c(5,6,7),10)
r1

#(f) (5, 6, 7, 5, 6, 7, , 5, 6, 7, 5) where there are 11 occurrences of 5, 
10 occurrences of 6 and 10 occurrences of 7.#

r2<-c(r1,5)
r2

#(g) (4, 4, , 4, 6, 6, , 6, 3, 3, , 3) 
where there are 10 occurrences of 4, 20 occurrences of 6 and 30 occurrences of 3.#

r3<-c(rep(4,10),rep(6,20),rep(3,30))
r3

##################CODE 2##########################

#2. Create a vector of the values of eX sin(x) at x = 3, 3.1, 3.2, , 6.#


x<-seq(3,6,0.1)
x

x1<-(exp(x) * sin(x))
x1

#3. Execute the following lines which create two vectors of random integers 
#which are chosen withreplacement from the integers 0, 1, : : : , 999. 
#Both vectors have length 250.#


set.seed(100)
x <- sample(0:999, 250, replace=T)
y <- sample(0:999, 250, replace=T)
x
y
#(a) Identify out the values in y which are > 500.#
y1<-y[y>500]
y1

#(b) Identify the index positions in y of the values which are > 700?#

y2<-(y>700)
y2
y3<-grep("TRUE",y2)
y3

#(c) What are the values in #
#x which are in Same index position to the values in y which are > 400?#

y4<-(y>400)
y4
y5<-grep("TRUE",y4)
y5
x2<-x[y5]
x2

#(d) How many values in y are within 200 of the maximum value of the terms in y?#
y6<-y[y<=200]
y6

#(e) How many numbers in x are divisible by 2?

x3<-ifelse(x%%2==0,"Y","N")
x3
x4<-grep("Y",x3)
x5<-length(x4)
x5

#(f) Sort the numbers in the vector x in the order of increasing values in y.


sort1<-sort(x,decreasing = FALSE)
sort1

####################CODE 4################################

#4. Use the function paste to create the following character vectors of length 30:
#(a) ("Label 1", "Label 2", ....., "Label 30").

c1<-"Label"
c2<-(1:30)
paste1<-paste(c1,c2)
paste1

#(b) ("FN1", "FN2", ..., "FN30").
c3<-paste("FN", seq(1:30) ,sep = "")
c3

#5. Compound interest can be computed using the formula
p<-10000
n<-(1:15)
r<-11.5/100
a<-p*(1+r/100)^n
a

#6) Generate the following matrices.
vec1<-c(1:5,101:105,201:205,301:305)
vec1
mat1=matrix(vec1,nrow=5,ncol=4)
mat1
