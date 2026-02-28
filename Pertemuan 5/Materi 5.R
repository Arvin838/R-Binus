data_student <- read.csv2(
    "C:/Users/binuscenter/Documents/Pertemuan 5/student_performance_diff.csv", sep = ",")

test_result <- t.test(as.numeric(data_student$total_score_a),
                      as.numeric(data_student$total_score_b))

print(test_result)



data_student <- read.csv2(
  "C:/Users/binuscenter/Documents/Pertemuan 4/student_performance.csv", sep = ",")

cor.test(as.numeric(data_student$total_score),
         as.numeric(data_student$weekly_self_study_hours))


library(ggplot2)

ggplot(data_student, aes(x = as.numeric(total_score),
                         y = as.numeric(weekly_self_study_hours))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Hubungan Jam Belajar dan Nilai")
