#Tugas 1
#Distribusi Normal
data <- read.delim("clipboard")

summary(data)

library(ggplot2)

hist(
  data$obs,
  main = "Histogram Distribusi Normal",
  xlab = "Nilai",
  col = "Lightblue"
)

ggsave("output/histogramdistribusi_nilai.png")

#Distribusi Uniform
hist(
  data_uniform,
  main = "Histogram Distribusi Uniform",
  col = "lightgreen"
)

#Tugas 2
data <- read.delim("clipboard")

sample_data <- sample(data$obs, size = 10)
sample_data
mean(data$obs)
mean(sample(data$obs, 10))
mean(sample(data$obs, 30))
mean(sample(data$obs, 50))

#Tugas 3
mean(data$obs)
#Hasil mean data asli = 0.01429815
mean(sample(data$obs, 30))
#Sampel 1 = Hasil mean sample 30: -0.1978667
#Sampel 2 = Hasil mean sample 30: -0.09163333
#Sampel 3 = Hasil mean sample 30: 0.3044
#Sampel 4 = Hasil mean sample 30: -0.07366667
#Sampel 5 = Hasil mean sample 30: -0.2246667

#Hasil dari ke lima mean sampel tersebut walaupun berbeda-beda, tetapi masih dalam
#jangkauan dari angka mean asli.


#Tugas 4
#1. Tidak, mean sampel bisa berbeda dengan mean yang asli (populasi)

#2. Tujuan dari pengukuran sampel untuk memberikan hasil yang lebih akurat dan lebih valid
#Semakin banyak sampel yang dihasilkan, maka bisa mensimpulkan bahwa angka dari rata
#rata tersebut bisa berhasil jika mendekati/masih dalam jangkauan angka dari mean original.

#3. Karena hasil sampling mengambil angka random pada data original (Contoh: jika
#simulasi A mengambil data dengan jumlah 30 mengambil di baris/kolom 1, maka jika dilakukan
#simulasi B dengan mengambil data jumlah 30 juga, itu bisa mengambil di baris/kolom
#yang berbeda). Karena itu jika dilakukan simulasi berulang kali, maka hasilnya akan berbeda.
