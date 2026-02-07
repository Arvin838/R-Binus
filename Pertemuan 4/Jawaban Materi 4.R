#Tugas 1

set.seed

data_normal <- read.csv2("C:/Users/binuscenter/Documents/Pertemuan 4/student_performance.csv", sep = ",")

summary(data_normal)

data_normal_kolom2 <- as.numeric(data_normal$weekly_self_study_hours)

shapiro.test(data_normal_kolom2)

hist(
  data_normal_kolom2,
  main = "Histogram Distribusi Normal",
  xlab = "Nilai",
  col = "lightblue"
)

#Jawab: P value: 1.186e-09 (0.00000000186)

#Tugas 2

t.test(data_normal_kolom2, mu = 15, conf.level = 0.95)#kalau nilai alpha 0.05 "1-0.05"
t.test(data_normal_kolom2, mu = 15, conf.level = 0.90)#kalau nilai alpha 0.10 "1-0.10"

#Jawab: Berdasarkan dari hasil data, diketahui bahwa  P-value = 0.4024, sehingga ini menyimpulkan
#gagal menolak H0 yang artinya tidak ada perbedaan yang signifikan dari H0.

#Tugas 3

t.test(data_normal_kolom2, mu = 15, conf.level = 0.90)

#Jawab: Jika menggunakan a = 0.10, berdasarkan dari hasil data terdapat perbedaan pada nilai confidence interval.
#Yang 95 percent adalah  14.89089 15.27183, sedangkan jika menggunakan 90 percent adalah 14.92152 15.24119.

#Tugas 4
#1. Uji normalitas diperlukan karena agar bisa mengetes simulasi nilai-nilai dari distribusi normal,
#dikarenakan banyak sekali metode dalam statistik ini, dan diperlukan uji normalitas agar bisa menghasilkan
#atau mengetahui nilai seperti p-value akurat dan keputusan dalam menentukan H0 itu tidak salah.

#2. Arti P-value adalah ukuran nilai probabilitas untuk menentukan seberapa besar nilai kemungkinan yang akan diteliti/dianalisa

#3. Hasil uji statistik tidak selalu mencerminkan kondisi nyata, hasil uji ini hanya memberitahu/menyimpulkan
#kondisi yang akan bisa terjadi atau bisa juga tidak terjadi. Sehingga, tidak bisa 100% akurat.