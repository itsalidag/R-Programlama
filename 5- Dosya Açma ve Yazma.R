
# --Dosya açma ve yazma--

#bir veriyi projemizin içerisine çekmenin yolu, verinin tam yolunu ve adını bilmektir.
#verinin tam konumunu tanımlayarak veriyi projeye yükleyebileceğimiz bir çok fonksiyon vardır

f <- "C:\projects\research\data\obs.csv" #windows dosya konumu örneği
#yukarıdaki konumu kullanmaya çalıştığımızda hata ile karşılaşırız, çünkü R da kaçış karakteri olarak
#kullanılan \ sebebi ile \p, konumumuzun içerisinde geçiyor ve karışıklık oluşuyor.

#bundan kurtulmak için ya ters taksim ya da kaçış karakterli taksim kullanılmalı "/", "\\"

f1 <- "C:/projects/research/data/obs.csv" #sorun olmayacaktır.
f2 <- "C:\\projects\\research\\data\\obs.csv" #sorun olmayacaktır.

file.exists(f1) 
d <- data.frame(id=1:10, name=letters[1:10], value=seq(10,28,2))

write.csv(d, 'test.csv', row.names=FALSE) #d veri setini dışarı aktaralım csv
write.table(d, 'test.dat', row.names=FALSE) #d veri setini dışarı aktaralım tablo

file.exists('test.csv') # bu dosyları üretince bunların var olduğunu sistem de onaylıyor.
## [1] TRUE
file.exists('test.dat')
## [1] TRUE

getwd() # çalışma dizinini gösterir.

