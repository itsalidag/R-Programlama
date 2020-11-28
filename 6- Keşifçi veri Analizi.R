d <- data.frame(id=1:10,
                name=c('Bob', 'Bobby', '???', 'Bob', 'Bab', 'Jim', 'Jim', 'jim', '', 'Jim'),
                score1=c(8, 10, 7, 9, 2, 5, 1, 6, 3, 4),
                score2=c(3,4,5,-999,5,5,-999,2,3,4), stringsAsFactors=FALSE)

summary(d) # veri setinin detaylarýný görmek için summary() kullanabiliriz.
i <- d$score2 == -999 #yanloþ verileri düzenleme üzere belirleyelim.
d$score2[i] <- NA #belirlediðimiz yanlýþ verileri NA ile deðiþtirmeliyiz, veri setinde iþlemleri karýþtýrmamasý için
summary(d) 
unique(d$name) #character formatýndaki verilerin farklý verilerini inceleyebiliriz.
d$name[d$name %in% c("Bobby", "Bab")] <- "Bob" #bir vektör ile deðiþtirmek istediðimiz verileri tek seferde deðiþtirebiliriz.
d$name
d$name <- toupper(d$name) #character verilerini büyük harfe dönüþtürebilriz.
d$name 
first <- substr(d$name, 1,1)# sadece ilk harfler üzerinde iþlem yapmak için ilk elemanlarý içeren altküme oluþturalým
remain <- substr(d$name, 2, nchar(d$name)) #kalanlarý ayrý bir altküme yapalým böylece istediðimiz iþlemi sadece ilk harfe uygulayabiliriz.
remain <- tolower(remain) #büyük harf olan verilerin ilk harfi dýþýndakileri küçük yapalým
d$name <- paste0(first, remain)#iki verimizi birleþtirelim. paste0]() ayraç olmadan birleþtirir paste() ayraç ile
d$name[d$name == "???"] <- NA # karakter verilerimizdeki hatalarý düzeltelim
d$name[d$name == ""] <- NA
table(d$name, useNA = "ifany") # veriler üzerinde iþlem yapmak için NA larý sayýlabilir hale getirmemiz gerek.
# R da bir veri seti üzerinde iþlem yapmadan önce NA lar üzerinde düzenleme yapmak gerekir aksi takdirde her iþlem NA sonucunu verir.

table(d[c("name", "score1")]) # isim ve skor 1 verileri ile pivot tablo oluþturulabilir.
quantile(d$score1) #çeyrekler ve aðýrlýklarý bu meetod ile bulunabilir.
range(d$score1) # verinin açýklýðý range() ile ölçülebilir.
mean(d$score1) #ortalama mean() ile ölçülür.

quantile(d$score2)
quantile(d$score2, na.rm = TRUE) # na.rm TRUE ile NA verileri iþlemin diðinda býrakabiliriz aksi takdirde 
# her iþlem NA sonucunu verecektir.
range(d$score2) 
range(d$score2, na.rm = TRUE)
mean(d$score2)
mean(d$score2, na.rm = TRUE)

par(mfrow=c(1,2)) # verilerimizi grafiðe dönðltðrmek için aralýk belirlemeliyiz.
plot(d$score1, d$score2) # nokta grafiði (basic)
boxplot(d[, c("score1", "score2")]) #kutu grafiði
plot(sort(d$score1)) # sýralayarak grafik haline getirmek mümkün
hist(d$score2) # histogram.
