d <- data.frame(id=1:10,
                name=c('Bob', 'Bobby', '???', 'Bob', 'Bab', 'Jim', 'Jim', 'jim', '', 'Jim'),
                score1=c(8, 10, 7, 9, 2, 5, 1, 6, 3, 4),
                score2=c(3,4,5,-999,5,5,-999,2,3,4), stringsAsFactors=FALSE)

summary(d) # veri setinin detaylar�n� g�rmek i�in summary() kullanabiliriz.
i <- d$score2 == -999 #yanlo� verileri d�zenleme �zere belirleyelim.
d$score2[i] <- NA #belirledi�imiz yanl�� verileri NA ile de�i�tirmeliyiz, veri setinde i�lemleri kar��t�rmamas� i�in
summary(d) 
unique(d$name) #character format�ndaki verilerin farkl� verilerini inceleyebiliriz.
d$name[d$name %in% c("Bobby", "Bab")] <- "Bob" #bir vekt�r ile de�i�tirmek istedi�imiz verileri tek seferde de�i�tirebiliriz.
d$name
d$name <- toupper(d$name) #character verilerini b�y�k harfe d�n��t�rebilriz.
d$name 
first <- substr(d$name, 1,1)# sadece ilk harfler �zerinde i�lem yapmak i�in ilk elemanlar� i�eren altk�me olu�tural�m
remain <- substr(d$name, 2, nchar(d$name)) #kalanlar� ayr� bir altk�me yapal�m b�ylece istedi�imiz i�lemi sadece ilk harfe uygulayabiliriz.
remain <- tolower(remain) #b�y�k harf olan verilerin ilk harfi d���ndakileri k���k yapal�m
d$name <- paste0(first, remain)#iki verimizi birle�tirelim. paste0]() ayra� olmadan birle�tirir paste() ayra� ile
d$name[d$name == "???"] <- NA # karakter verilerimizdeki hatalar� d�zeltelim
d$name[d$name == ""] <- NA
table(d$name, useNA = "ifany") # veriler �zerinde i�lem yapmak i�in NA lar� say�labilir hale getirmemiz gerek.
# R da bir veri seti �zerinde i�lem yapmadan �nce NA lar �zerinde d�zenleme yapmak gerekir aksi takdirde her i�lem NA sonucunu verir.

table(d[c("name", "score1")]) # isim ve skor 1 verileri ile pivot tablo olu�turulabilir.
quantile(d$score1) #�eyrekler ve a��rl�klar� bu meetod ile bulunabilir.
range(d$score1) # verinin a��kl��� range() ile �l��lebilir.
mean(d$score1) #ortalama mean() ile �l��l�r.

quantile(d$score2)
quantile(d$score2, na.rm = TRUE) # na.rm TRUE ile NA verileri i�lemin di�inda b�rakabiliriz aksi takdirde 
# her i�lem NA sonucunu verecektir.
range(d$score2) 
range(d$score2, na.rm = TRUE)
mean(d$score2)
mean(d$score2, na.rm = TRUE)

par(mfrow=c(1,2)) # verilerimizi grafi�e d�n�lt�rmek i�in aral�k belirlemeliyiz.
plot(d$score1, d$score2) # nokta grafi�i (basic)
boxplot(d[, c("score1", "score2")]) #kutu grafi�i
plot(sort(d$score1)) # s�ralayarak grafik haline getirmek m�mk�n
hist(d$score2) # histogram.
