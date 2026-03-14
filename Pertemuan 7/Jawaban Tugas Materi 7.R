#Jawaban Tugas Materi 7

#Tugas 1

data_customers <- read.csv2("C:/Users/binuscenter/Documents/Pertemuan 7/Customer_Transactions.csv", sep = ",")


summary(data_customers)
pairs(data_customers)

#Jawaban: - customer id: min: 1; mean: 5000; Max: 10000
#         - gender: Bertipe character
#         - Country: Bertipe character
#         - Age: Min: 18; Mean: 44.05; Max: 70
#         - Annual Income: Min: 20028; Mean: 86068; Max: 179960
#         - Spending Score: Min: 1; Mean: 50.92; Max: 100
#         - Number of purchases: Min: 1; Mean: 22.58; Max: 49
#         - Membership years: Min: 0; Mean: 6.34; Max: 15
#         - Website visits per month: Min: 1; Mean: 15.58; Max: 30
#         - Churned: Min: 0; Mean: 0.109; Max: 1

#Tugas 2

model <- lm(spending_score ~ as.numeric(num_purchases) + as.numeric(membership_years)
          + as.numeric(website_visits_per_month), data = data_customers)


summary(model)

#Jawaban: - Nilai R Squared adalah 0.6163
#         - Variabel yang signifikan adalah number of purchases dan membership years
#          ,karena bisa dilihat dari hasil P valuenya bahwa terdapat 3 bintang (***)
#           pada number of purchases dan membership years dengan nilai sebesar 0.0000216,
#           sedangkan untuk variabel website visits per month sebesar 0.458 (p > 0.05)

#Tugas 3

model2 <- lm(spending_score ~ as.numeric(cart_abandon_rate) + as.numeric(membership_years)
             , data = data_customers)

summary(model2)

#Jawaban: - NIlai R squared adalah 0.0004891
#         - Untuk ke dua variabel menunjukkan bahwa tidak signifikan, karena tidak ada
#           bintangnya dan untuk angka yang didapatkan pada kategori cart_abandon_rate
#           sebesar 0.755 dan kategori membership years sebesar 0.532

#Tugas 4

library(ggplot2)

ggplot(data_customers, aes(as.numeric(num_purchases), 
                           as.numeric(spending_score))) +
  geom_point() +
  geom_smooth(method="lm")

ggsave("regresi_berganda.png")