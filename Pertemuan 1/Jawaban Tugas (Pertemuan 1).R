#Tugas 1
nilai <- c(70, 75, 80, 65, 90, 85, 78, 88, 92, 60)
mean(nilai)
min(nilai)
max(nilai)

#Tugas 2
data_mahasiswa <- data.frame(
  nama = c("Budi","Randy","Toni","Susi","Anton","Chika","Doddy","Eko","Nina"),
  nilai = c(90, 30, 76, 55, 100, 68, 88, 95, 34),
  jenisKelamin = factor(c("L","L","L","P","L","P","L","L","P"))
)

str(data_mahasiswa)
summary(data_mahasiswa)

#Tugas 3
library(readr)

data <- read_csv("Pertemuan 1/mahasiswa 3.csv")

head(data_mahasiswa)
str(data_mahasiswa)
summary(data_mahasiswa)


#Tugas 4
#1. Vector untuk suatu kumpulan nilai data dalam 1 jenis saja. Sedangkan 
#Data frame adalah kumpulan beberapa data yang mencakup keterangan 
#atau informasi yang lebih lengkap pada data tersebut (data frame ini juga dalam bentuk tabel).

#2. Factor penting dalam statistika karena ini digunakan agar kita bisa mengkategorikan
#dan bisa menempatkan jenis faktor ke data source yang benar dan tepat.

#3. Kendala: a. Jika isian pada excelnya masih kosong, maka tidak akan bisa menampilkan hasil data.
#            b. Nama folder & nama file harus sesuai, jika tidak sesuai makan akan error.