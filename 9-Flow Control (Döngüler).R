
# Akış Kontrolü -- Flow Control

#bazen kodumuzun belirli bir kurala göre tekrar etmesini isteriz. Bu durumda Flow Control durumlarını kullanacağız.
#vektörel işlemler yapılırken tekrarlı fonksiyonlar yazmak apply fonsksiyonlarından daha yavaş çalıştığı için tercih edilmez

for (i in (1:3)){
  print("merhaba dünya")
} #1 ile 3 arasında her değer için merhaba dünya yazdırdık

#Burada '}' in "}" hatası ile sıklıkla karşılaşılmaktadır. Bu hatanın çözümü, if, else, for, while gibi döngülerde
#mantıksal operatörleri parantez içerisinde belirtmektir.

#döngünün dışındaki değişkenleri de döngü ile kullanmak mümkün. 

ali <- 23
while (ali < 30){
  print(paste("Ali henüz genç", ali, "yaşında"))
  ali <- ali +1 
}
#dışarıdan aldığımız ali değişkenini istediğimiz koşulu True döndürdüğü sürece çalıştıralım

for (i in 0:24){
  print(paste("ali", i, "yaşında"))
}  

# 0 ile 24 arasındaki her değer için bir string döndürelim. Unutmayalım, bir string oluştururken farklı değerleri paste ile bir araya
#getirmek ve ardından yazdırmak en basit çözümdür. Paste, bir düzen ile yazdırır anca paste0, değerleri direk arka arkaya ekler. 

# bir döngü içerisinde bir aralığı mümkün olduğunu bildiğimiz her şekilde verebilriz. önemli olan değişkene iki farklı string vermek.
vektor <- 1:4
for (i in 0:length(vektor)){
  mesaj <- paste("şuan dışarıdan aldığımız vektör aralığında", i, "nci değerdeyiz.")
  print(mesaj)
}

#bir kaç döngüyü iç içe yaparak veri içerisinde bir kaç farklı koşulu karşılayan sayıları elde etmek mümkün.
#Örnekte 1 ile 10 arasında i nin her değeri için döngüyü başlattık. ardından i eğer verilen vektör içerisinde ise 
#devam etmesini söyledik, bu durumda i değerimiz bir sonraki değere geçti. ardından i nin aldığı değer döngüye tekrar 
#başladı ve bu sefer verilen vektör içerisinde değil ise bir sonraki if döngüsüne girmesini sağladık. diğer if döngüsü ise
#i nin 7 den büyük veya küçük olduğunu sorguladı ve eğer küçük ise i döngüden çıktı ve konsola yazdırıldı.
#bundan sonra yeni ddeğerini alan i ilk if döngüsünü geçip ikinci if döngüsüne 7 den büyük bir değer ile geldiğinde ise 
#break ile döngü durduruldu ve i değer almayı bıraktı. Bu sayede konsolda 1,3,5,7,9 olmayan ve 7 den küçük olan değerleri yazdırmış olduk.
for (i in 1:10){
  if (i %in% c(1,3,5,7,9)){
    next
  }
  if (i>7){
    break
  }
  print(i)
}

