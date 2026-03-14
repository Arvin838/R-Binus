#Materi 7

data_student <- read.csv2("C:/Users/binuscenter/Documents/Pertemuan 4/student_performance.csv", sep = ",")

data_student

model <- lm(total_score ~ as.numeric(weekly_self_study_hours) + 
              as.numeric(attendance_percentage) + as.numeric(class_participation), 
            data = data_student)

summary(model)

library(ggplot2)

ggplot(data_student, aes(as.numeric(weekly_self_study_hours), as.numeric(total_score))) +
  geom_point() +
  geom_smooth(method="lm")