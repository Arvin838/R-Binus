#Tugas 1

data_student <- read.csv2(
  "C:/Users/binuscenter/Documents/Pertemuan 6/student_performance.csv", sep = ",")

head(data_student)

fit_anova <- aov(attendance_percentage ~ class, data = data_student)
summary(fit_anova)

#Jawaban: Berdasarkan dari hasil data, P value mendapatkan nilai sebesar 0.619 yang berarti
#termasuk dalam H1 yang tidak menolak dan tidak ada perbedaan.

#Tugas 2
shapiro.test(residuals(fit_anova))

#Jawaban: Berdasarkan dari hasil didapatkan sebesar 0.00000216 pada P value, yang berarti
#data tidak normal (Menolak H0).

#Tugas 3
data_reg <- read.csv2(
  "C:/Users/binuscenter/Documents/Pertemuan 6/Salary_dataset.csv", sep = ",")

set.seed(123)

data_reg <- data.frame(
  jam_belajar = 1:30,
  nilai = 60 + 2*(1:30) + rnorm(30, 0, 5)
)

head(data_reg)

fit_lm <- lm(Salary ~ as.numeric(YearsExperience), data = data_reg)
summary(fit_lm)


library(ggplot2)

ggplot(data_reg, aes(x = as.numeric(YearsExperience), y = Salary)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Regresi Linear Sederhana")

#Jawaban: 
#Nilai Multiple R-Squared yaitu: 0.957

#Nilai B0: 24848.2 ; B1: 9450. Artinya jika tidak ada pengalaman kerja sama sekali (0), maka
#gaji yang didapatkan sebesar 24,848.2 dan akan bertambah sebesar 9450 jika pengalaman kerja naik setiap tahun.

#Dari hasil gambar grafik, didapatkan arti angka salary semakin naik jika
#lama pengalaman kerja juga semakin lama. Sehingga, jika pengalamannya sudah lama seperti contoh
#7 tahun lebih, maka salary yang didapatkan akan sekamin besar juga.

ggsave("regresi_sederhana.png")