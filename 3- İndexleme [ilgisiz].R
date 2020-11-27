# -- İNDEKSLEME ---

b<- 10:15
b[1]
b[6]
b[2:3]
b[c(2,3)]
a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
a[c(5,8:14)]
a[-14]
a[12] <- "ali"
a[12]
m <- matrix(data = c(1:9),nrow = 3,ncol = 3, byrow = TRUE)
colnames(m) <- c("col1","col2","col3")
m[2,2]
m[1,]
m[,'col1']

# --which, in -- 
x <- c(1,2,3,4,5,6,7,8,9,19)
y <- which(x>4)
y
x[y]

a <- 10:20
b <- c(3,4,11,12,4,19)
x <- b %in% a
a[x]
match(a,b)
match(b,a)
