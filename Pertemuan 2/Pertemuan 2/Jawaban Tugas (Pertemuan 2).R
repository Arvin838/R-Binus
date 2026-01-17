#Tugas 1

data <- read.delim("clipboard")


mean(data$Price)
median(data$Price)
min(data$Price)
max(data$Price)
sd(data$Price)

#Catat Hasilnya
#mean = 130427.3
#median = 125950
#minimum = 69100
#maksimum = 211200
#standard deviasi = 26868.77

#Tugas 2
result_base <- aggregate(Bathrooms ~ Offers + Price, data = data, FUN = mean)
print(result_base)

#Tugas 3
#Histogram
library(ggplot2)

ggplot(data, aes(x = Price)) +
  geom_histogram(color="white", fill = "red") + 
  labs(title = "Histogram Harga",
      x = "Harga",
      y = "Frekuensi")

#Berdasarkan dari tabel tersebut, terdapat perkiraan 17 rumah dengan harga kisaran 120.000 - 130.000
#(Tabel grafik yang paling tinggi). Sedangkan, untuk tabel grafik paling rendah terdapat perkiraan
#3 rumah dengan harga di atas 200.000. Untuk secara mayoritas dan rata-rata dari keseluruhan data
#terdapat perkiraan 7 rumah yang mempunyai harga cukup stabil dengan kisaran 130.000 - 140.000

ggplot(data, aes(y = Price)) +
  geom_boxplot(fill = "purple") +
  labs(title = "Boxplot Harga")

ggsave("output/histogram_harga 1.png")

#Berdasarkan grafik tersebut, terdapat perkisaran harga 110.000 sampai dengan 145.000 yang berkumpul
#dalam 1 area (berkumpul dalam kotak ungu tersebut). Lalu, terdapat juga outlier yang angkanya melebihi dari secara rata-rata
# yaitu di atas 200.000 (berdasarkan dari data mentah, ada terdapat 1 harga rumah yang mencapai 211.200).


#Tugas 4

#1. Bentuk distribusi data adalah pengelompokan suatu data yang mempunyai
#nilai variabel yang sama/terkoneksi. 
#2. Suatu perkumpulan data jika terdeteksi/terdapat outlier, maka nilai data 
#tersebut menyimpang dari nilai data dari perkumpulan itu.
#3. Mean dan median memiliki nilai yang hampir "sama", mean memberikan hasil nilai dari 
#rata-rata pada perkumpulan data tersebut. Sedangkan, Median adalah 
#nilai tengah nya.
#4. Kesimpulannya, berdasarkan pelajaran hari ini. Kita jadi bisa mengetahui, 
#jika ada suatu perkumpulan data, maka dengan R studio ini, kita bisa tau berapa nilai rata-rata,
#nilai tengah, angka minimum, angka maksimum dan berapa nilai penyebaran datanya, serta bisa mengelompokkan data.
#Lalu, berdasarkan dari grafik histogram juga, kita jadi bisa menganalisa berapa jumlah total,
#tabel grafik mana yang paling tinggi dan paling rendahnya (sesuai dengan faktor yang di data mentah punya kita)


