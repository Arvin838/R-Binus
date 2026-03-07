data_student <- read.csv2(
  "C:/Users/binuscenter/Documents/Pertemuan 6/student_performance.csv", sep = ",")

#Data Dummy
set.seed(123)

#Data Dummy Dari 3 Kelas A, B dan C
data <- data.frame(
  kelas = rep(c("A", "B", "C"), each = 10),
  nilai = c(rnorm(10, 75, 5),
            rnorm(10, 80, 5),
            rnorm(10, 78, 5))
)

head(data_student)

fit_anova <- aov(attendance_percentage ~ class, data = data_student)
summary(fit_anova)

#Regresi Linear
#Data Dummy
set.seed(123)

data_reg <- data.frame(
  jam_belajar = 1:30,
  nilai = 60 + 2*(1:30) + rnorm(30, 0, 5)
)

head(data_reg)

fit_lm <- lm(nilai ~ jam_belajar, data = data_reg)
summary(fit_lm)

#Visualisasi
library(ggplot2)

ggplot(data_reg, aes(x = jam_belajar, y = nilai)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Regresi Linear Sederhana")


