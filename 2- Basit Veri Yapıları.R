#Basit veri yapıları

#Basit veri tiplerinden sonra yapılandırılabilir verilerin saklanabileceği yapıları
#inceliyoruz. Bunlar Liste, Matrix ve data.frame olarak ayrılacaktır. 

# - Matrix - 
# şimdiye dek gördüğümüz vektör veriler tek boyutlu yapıdaydı. Ancak Matrixler ile 
# birden fazla boyutta veriler saklanabilir.

matrix(nrow = 4, ncol= 5) #4 satır ve 5 sütünden oluşan bir matrix döndürür. 
#ancak matriximize veri tanımlamadığımız için şuan tüm veriler boş dönecektir. 

matrix(data = 1:9, nrow = 3,ncol=3) #data ile matrixin elemanları tanımlanabilir. 

#verileri ilk veridğimizde default olarak sütünlar boyunca değerler ilerlemektedir.
#bunu sütunlara çevirmek istenirse matrix() fonksiyonunda byrow = TRUE girilmelidir.

matrix(1:9, ncol = 6, nrow = 3, byrow=TRUE)

#byrow komutu yerine matrixi t() (transpose) fonksiyonu ile tersine çevirmek mümkün

m <- matrix(data = 1:9, nrow = 3,ncol=3)
t(m)

#iki farklı vektörü tek bir fonksiyonda bağlamak mümkün. Bu bağlama satır veya sütun bazında yapılabilir.

a<- 1:6
b <- c("ali", "R", "Github", "Veli","Su", "Can")

cbind(a,b) #cbind, iki (veya daha fazla) vektörü sütün alalrak bağlar
a <- rbind(a,b) #rbind, iki (veya daha fazla) vektörü satır alarak bağlar

#bir matrix hakkında bilgi almak için

nrow(a) #satır sayısı
ncol(a) #sutun sayısı
dim(a) #katmanları 
length(a) #uzunluğu
colnames(a) #sütün adları 
rownames(a) #satır adları
rownames(a) <- c("sutun 1", "sutun2") #satır adı değiştir
colnames(a) <- c("kolon", "molon", "zolon", "yolon", "horon", "maroon") #sutun adları değiştir.

# --LİSTELER --

# listeler diğer veri yapılarına göre daha açıktır. birden fazla veri türünde
# nesneleri barındırabilir oluşu diğer veri yapılarından ayrılan özelliğidir.

e <- list(c(1,2,3), "ali") # ilk elemanı vektör ve ikinci elemanı karakter. 
class(e)

#listeye hem karakter hem matrix hem de vector koyalım
q <- list(m,c(1,2,3),"ali")


# -- DATA FRAME -- 

# matrix ve listeler ile bir çok farklı veriyi farklı yapıda saklamak mümkün, ancak
# geniş veri setlerinde bir çok veri tipi aynı anda kullanılmak istenebilir. 
# bu durumlarda data.frame ler veri analitiğinin yapı taşı olarak kullanılır.
# data.frame ler farklı formatte ve yapıda verileri satır ve sütun dormatında saklayabilir.

ID <- as.integer(1:4)
name <- c('Ana', 'Rob', 'Liu', 'Veronica')
sex <- as.factor(c('F','M','M','F'))
score <- c(10.2, 9, 13.5, 18)
d <- data.frame(ID, name, sex, score, stringsAsFactors=FALSE)
d
names(d)
class(d)
#oluşturduğumuz data.frame ile 4 farklı vektörü aynı veri setinde sakladık.

