#Tugas 1

data_student <- read.csv2(
  "C:/Users/binuscenter/Documents/Pertemuan 5/student_performance_3.csv", sep = ",")

test_result <- t.test(as.numeric(data_student$weekly_self_study_hours),
                      as.numeric(data_student$attendance_percentage))

print(test_result)

#Jawaban: Berdasarkan dari hasil data, didapatkan nilai P-value sekitar 0.00002216
#,sehingga gagal menolak H0 artinya tidak ada perbedaan signifikan dari H0.

#Tugas 2

data_student <- read.csv2(
  "C:/Users/binuscenter/Documents/Pertemuan 4/student_performance.csv", sep = ",")

cor.test(as.numeric(data_student$total_score),
         as.numeric(data_student$class_participation))

#Jawaban: Berdasarkan dari hasil data korelasi, didapatkan nilai korelasi sebesar -0.03372603
#yang artinya bahwa hubungan antar korelasi tersebut lemah (Nilai total score tidak berpengaruh pada kegiatan
#aktivitas partisipasi di dalam kelas)

#Tugas 3

library(ggplot2)

ggplot(data_student, aes(x = as.numeric(total_score),
                         y = as.numeric(attendance_percentage))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Hubungan Persentase Kehadiran dan Nilai")

ggsave("output/scatter_korelasi.png")

#Jawaban: Dari hasil gambar grafik tidak ada perbedaan antara nilai total skor  dengan class participation.

#Tugas 4

#1.Tidak, perbedaan rata-rata pada hasil data di tugas 1 tidak berbeda secara signifikan.
#
#2. Kalau jika berdasarkan dari hasil dari tugas 2, maka antara nilai total score dengan class participation tidak berhubungan.
#Korelasi bisa dibilang juga "sebab-akibat" karena berdasarkan dari hasil grafik, contoh: jika ada total skor yang naik
#, maka itu adalah hasil dari akibatnya, maka penyebabnya angka total skor itu naik adalah apa, kayak misalkan
#dikarenakan gara-gara jam belajar siswa yang makin naik juga.

#3. Contoh kasus tentang korelasi: Hubungan korelasi dari hasil kualitas produksi susu dari sapi dari yang sebelum
#dilakukan perawatan intensif terhadap sapi tersebut (Contoh: jenis makanannya, perawatan, vitamin, fasilitas peternakan, dll) dengan
#hasil dari produksi susu oleh sapi yang perawatannya kurang memadai.