

# --Vektörel işlemler-- 

a <- 1:5
b <- 6:10

# çarpma işlemlerini vektörler arasında yapabiliriz. indexler bazında çarparak bir vektör döndürecektir.

d <- a*b
a
b
d
#bir vektörü sabit bir değer ile de çarpabiliriz. yine indexlere tek tek oygulayacaktır.

a*3

#iki vektörü toplamak eleman sayıları eşit olduğunda çok kolay. ancak eleman sayıları
#farklı olan vektörleri toplarken büyük vektörün küçük vektörün elemen sayısının katı olması gerek
a + c(1,2) #hata
a + c(1) #normal. 5 1 in katı ancak ikinin değil.

# mantıksal operatorler
# bir vektörü mantıksal bir önerme ile sorgulayabiliriz.

a > 2 # FALSE FALSE  TRUE  TRUE  TRUE

# & Boolean “VE”, ve | Boolean “VEYA” demektir.
# ve ifadesinde her ikisi de true olmadıkça sonuç false dur.
# veya ifadesinde bir true olması ifadeyi true yapar

a #1 2 3 4 5
b #6  7  8  9 10

a>2 & a<4 #FALSE FALSE  TRUE FALSE FALSE
a>3 | b<8 #TRUE  TRUE FALSE  TRUE  TRUE

# >= büyük eşittir ve <= küçük eşittir için kullanılır
a<=1 #TRUE FALSE FALSE FALSE FALSE
a>=4 & b<=10 #FALSE FALSE FALSE  TRUE  TRUE

#cebirsel fonksiyonlar
sqrt(a) #karekök değerini verir her değerin
min(a) #minimum değer
max(a) #maksimum değer
mean(a) #ortalama
median(a) #ortanca değer
range(a) #vektör aralığı
sum(a) #değerler toplamı
length(a) #vektör uzunluğu
prod(a) #değerlerin çarğımı
sd(a) #vektörün standart sapması

# random sayı üretmek 
#runif() fonksiyonu tekdüze dağılımda sayı üretir ve 3 arguman alır. vektör uzunluğu, min ve max
runif(20, min= 5, max=7)

#rnorm ile normak dağılımda sayı üretilebilir. uzunluk, ortalama ve sapma argumanlarını alır
rnorm(10, mean= 5, sd = 3) 

# cebirsel işlemleri R ile matrisler üzerine de uygulamak mümkün
m <- matrix(1:9, nrow = 3, ncol = 3)
m
m*2 #indeksleri iki ile çarpıyoruz
m^2 # her indeksin karesini alır
m + c(1,2,3) #indekse vektör ekenebilir ancak formata göre ekler. (ö: belirtmediğimiz için sütun boyu ilerler)


