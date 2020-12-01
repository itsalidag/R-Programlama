
## Fonksiyonlar
### R kullanırken bir çok fonksiyondan halihazırda faydalanıyoruz. Bu fonksiyonlar genellikle fonksiyon adı ve parantez şeklinde
### kullanılır. parantezsiz olarak bir fonksiyonu çağırmak çoğu zaman hata oluşumuna sebep olacaktır. Bu hata metninde fonksiyonun 
### yapısı hakkında bilgi edinmek mümkün.

nrow #function (x) --> fonksiyon, x ile belirtildiği üzere 1 değişlen alacaktır.  
#     dim(x)[1L] # bu değişkeni dim fonksiyonuna yerleştirerek 1. değeri döndürecektir.
#     <bytecode: 0x000001e3ef6b1d18>
#     <environment: namespace:base>
m <- matrix(1:6, nrow=2, ncol=3, byrow=TRUE)
nrow(m) # fonksiyonu gerektiği üzere 1 parametre ile çalıştırdığımızda satır sayısını döndürecektir.


# Kendi Fonksiyonlarımı yazmak.. 

f <- function() {
  return('hello') 
} #f fonksiyon adını bir fonksiyon fonksiyonuna (:D) atıyoruz ve dalgalı parantez içerisinde işlemi giriyoruz.

f() #fonksiyonumuu çalışıtacak ve hello döndürecektir.

f <- function(name) {
  x <- paste('hello', name)
  return(x)
}  #değişken olarak belirlediğimiz name yerine fonksiyonu çağırırken yazacağımız değer, işlemde yerini alacaktır.

f("ali") # "hello ali"

  

