
# APPLY

m <- matrix(1:15, nrow=5, ncol=3)
#Apply fonksiyonu ve türevleri ile bir vektör üzerinde çeşitli indeksleme ve işlemler yapılabilir.

apply(m,1,sum) #ilk olarak vektör veya array verilir, sonra kapsam belirtilir. vektörde 1 satırı 2 sütunu temsil eder.
#ardından yapılmak istenen işlem tanımlanır. Sum, mean, median gibi daha önce öğrendiğimiz fonskiyonlar

apply(m, 2,sum) # sütunlar bazında toplama işlemi. 
apply(m, 1, mean) 
#na.rm = True parametresi ekleyerek boş verilerin işlem dışı kalmasını sağlayabiliriz

#işlemin hangi indekste yapılacağı gibi detayları bizim için kısaltan fonksiyonlar 

rowSums(m)
colSums(m)

colnames(m) <- c('v1', 'v2', 'v3')
d <- data.frame(name=c('Yi', 'Yi', 'Yi', 'Er', 'Er'), m, stringsAsFactors=FALSE)
d$v2[1] <- NA
d
tapply(d$v1,d$name,mean)  # v1 ile name sütünlarını ortalalma değerlerde pivot tablo yaptık

tapply(d$v2, d$name, mean) #Daha önce de gördüğümüz üzere bir NA değeri girdiği işlemi hep NA döndürüyor.
#bu noktada v2 deki NA verisini işlem dışında bırakmamız gerek.
tapply(d$v2, d$name, mean, na.rm = TRUE) #kalan değerler üzerinden ortalama hesaplayarak döndürecektir.

#tapply fonksiyonunu sadece iki veriyi karşılaştırmak yerine bir çok veriyi karşılaştıracak şekilde kullanmak
#istersek kullanacağımız fonksiyon aggregate olmalıdır.

aggregate(d[, c('v1', 'v2', 'v3')], d[, 'name', drop=FALSE], mean, na.rm=TRUE)

#sadece name kullanmamıza rağmen ikinci veriyi de liste olacak şekilde göstermemiz gerek, aksi takdirde tür hatası alırız

# sapply ve lapply
#bir liste elemanları boyunca uygulanacak bir fonksiyon girmemize yarar. lapply liste döndürürken sapply basit vector veya matrix döndürür 

names <- list('Antoinette', 'Mary', 'Duncan', 'Obalaya', 'Jojo')
nchar("jim")
lapply(names, nchar)
sapply(names, nchar)


#sapply, lapply, apply veya aggregate kullanırken fonksiyon kısmına kendi yazdığımız fonksiyonları da girmek mümkün.
