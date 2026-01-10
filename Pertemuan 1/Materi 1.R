nilai <- c(80,75,90,60,85)

mean(nilai)
max(nilai, na.rm=TRUE)
min(nilai)

kelas <- factor(c("A", "A", "B", "B", "A"), 
                levels = c("B","A"), labels = c(1, 2))


data_mahasiswa <- data.frame(
  nama = c("Ani", "Budi", "Cici", "Dodi", "Eka"),
  nilai = c(80, 75, 10, 60, 85),
  kelas = factor(c("A", "A", "B", "B", "A"), 
                 levels = c("B","A"), labels = c(1, 2))
  
)
data_mahasiswa

#Mengecek struktur data
str(data_mahasiswa)
summary(data_mahasiswa)

#EXPORT
#Menggunakan Library Readr
library(readr)
write_csv(data_mahasiswa, "output/Mahasiswa.csv")

#Tanpa Menggunakan Library Readr
write.csv(data_mahasiswa, file="output/mahasiswa_baru.csv")

#IMPORT
#Menggunakan Library Readr
data <- read_csv("output/mahasiswa.csv")

data

#Tanpa Library Readr
data1 <- read.csv("output/mahasiswa_baru.csv")

data1


#Import menggunakan fitur paste (Clipboard)
data2 <- read.delim("clipboard")

data2


