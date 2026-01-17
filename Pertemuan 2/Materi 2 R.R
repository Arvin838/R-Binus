data_mahasiswa <- data.frame(
  nama = c("Ani", "Budi", "Cici", "Dodi", "Eka"),
  nilai = c(80, 75, 90, 100, 30, 40, 70, 55, 44, 100),
  kelas = factor(c("A", "A", "B", "B", "A"), 
                 levels = c("B","A"), labels = c(1, 2))
  
)
data_mahasiswa

#Memasukkan Nilai Mean ke dalam variabel
mean(data_mahasiswa$nilai)

median(data_mahasiswa$nilai)
min(data_mahasiswa$nilai)
max(data_mahasiswa$nilai)
sd(data_mahasiswa$nilai)


summary(data_mahasiswa)


library(ggplot2)
install.packages("tidyverse")
install.packages("rlang")
remove.packages("rlang")
packageVersion("rlang")



#Histogram
ggplot(data_mahasiswa, aes(x = nilai)) +
  geom_histogram(binwidth = 2, fill = "green") +
  labs(title = "Histogram Nilai",
       x = "Nilai",
       y = "Frekuensi")


data <- read.delim("clipboard")

#Boxplot
ggplot(data, aes(y = Bedrooms)) +
  geom_boxplot(fill = "purple") +
  labs(title = "Boxplot Nilai")
