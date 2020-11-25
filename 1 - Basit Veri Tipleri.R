# Bu dökümanda basit veri tipleri üzerinde duracağız. Her programlama dilinde olduğu gibi
# R ile programlama yaparken de verilerin türü dikkat edilmesi gereken başlıca konulardan
# biridir.

#Numerik ve Tam Sayı veriler:

a <- 7 #komutunda; a bir değişkendir ve bu durumda a ya atanan değer 7 dir. 
a <- 8 #bir değişken olduğunu bildiğimiz a, sürekli farklı değerler alabilir ancak 
#programımız işlem sürecinde a ya ilk ihtiyaç duyguğu noktada a nın son değerini kabul eder.

#konsolda bir sonuç yazdırmak istediğimizde show() veya print() fonksiyonlarını kullanırız

show(a)
print(a) # bize a nın son değerini verecektir.
print(class(a)) #ile a nın ait olduğu sınıfı ve dolayısı ile veri tipini sorgulayabiliriz.
#şu anda veri tipi numeric olan a değişkenini bir başka veri tipine dönüştürmek için
#bir kaç farklı yol vardır. bunlardan en basiti 
a <- as.integer(a) #komutunu kullanarak a'yı integer olarak al demektir. 
print(class(a)) #ile a nın güncel veri tipini sorgulamak mümkün.

#birden fazla eğeri vektör olarak kombine etmek için c (combine) komuti kullanılabilir.
v <- c(1,3,5,6,7)
#belirli bir aralıktaki değerleri almak için bunları tek tek yazmak yerine
#aralık belirlemek daha kolay bir çözüm olacaktır. 

v2 <- c(1:5) #bu bize 1 ile 5 arasındaki değerler ile bir vektör oluşturur.

#aralığımız sabit değil ile seq() fonksiyonu ile bir kural belirleyebiliriz

myseq <- seq(from = 10, to = 50, by = 15)#bu bize 10dan başlayarak 50 ye 15 er artan
#bir sekans oluşturacaktır. 

#aynı sayıyı belirli bir sayıda tekrar yazdırmak için ise rep() fonksiyonu kullanılır.

ikiler <- rep(2, times= 2) #iki adet iki oluşturduk.

string <- "Ali" #string değerler karakterlerden oluşur ve tırnak işareti içerisinde
#yazılır. 
string2 <- "Merhaba"
print(paste(string2,string)) #•stringleri kombine ederek yazmak için paste() fonksiyonu kullanılır.

ulkeler <- c("ankara","istanbul","izmir") #stringlerden oluşan bir vektörü de c() fonksyonu ile oluşturmak mümkün

class(ulkeler) #bu vektörün sınıfının character olduğunu görebiliyoruz.
nchar("Ali") #ile karakter türündeki bir verinin karakter sayısını elde ederiz.

letters #bir built-in fonksiyonudur ve alfabenin harflerini verir.
up <- toupper(letters) #toupper ile bir küçük karakterleri büyüğe çevirmek mümkün
ad1 <- "Ali"
ad2 <- "Veli"
print(paste(ad1, "benim, sen ise", ad2, sep = "--")) #sep niteliği ile ayraç belirlemek mümkün
print(paste(ulkeler, collapse = " belediyesi ")) #collapse niteliği ile vektör halindeki bir listeyi
#tek bir nesneye dönüştürmek mümkün. collapse, nesneler arasındaki bağlacı belirler.

substr("Merhaba", 1,4) #substr ile bir stringden alt kümesi elde edilebilir. 

gsub("i", "o", ad1) #bir stringin içerisinde karakteri bul ve değiştir işlemi gsub ile yapılır. 

m <- c("ali","veli","deli","ahmet","arda")
grep("i", m) #grep ile özel bir karakterin bulunduğu indeksleri bulmak mümkün

grep("i$", m) #sonu i olan elemanların indekslerini elemanın sonuna $ koyarak bulabiliriz.

grep("^a", m) #a ile başlayan elemanların indekslerini ^ işareti ile bulabiliriz

a <- TRUE #mantıksal operatorler doğru veya yanlış TRUE veya FALSE olabilir. 
class(a) #mantıksal olduğu görülebilir. 

uc <- 3
uc >2 # uc değişkenine 3 atadıktan sonra ikiden büyüktür dediğimizde mantıksal operator TRUE verir

a+1 #Bilgisayar dilinde TRUE 1 ve üzeri sayılara karşılık gelir FALSE ise 0 a

as.logical(75) #mantıksal değerini sorguladığımızda TRUE verir çünkü 0 dışında tüm sayılar TRUE dir. 

z <- c(7,7,6,6,8,4,5,6,2,3,4,5)
as.factor(z) #veri setimizin katmanlarını belirlemek için as.faktor() kullanılır.


