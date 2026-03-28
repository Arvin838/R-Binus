#Proyek Akhir Pertemuan 8

#1. Import Dataset

data <- read.csv2("C:/Users/binuscenter/Documents/Pertemuan 8/Churn Modeling.csv", sep = ",")
head(data)

#2. Eksplorasi Dataset

str(data)
summary(data)
dim(data)

#Berapa jumlah observasi? ; Jawaban: perkiraan 6 kali
#Berapa jumlah variabel? ; Jawaban: 11
#Variabel apa saja yang tersedia? ; Jawaban: Terdapat variabel seperti rownumber, customerID
#, Surname, Creditscore, Geography, Length, Age, Tenure, Balance, NumofProducts, HascrCard, IsactiveMember
#Lalu dari semua variabel itu berdasarkan dari setelah digunakan rumus Summar (Data) Bisa dilihat hasil angka
#Min, Median, Mean, Max, dll nya.

#3. Statistik Deskriptif

mean(data)
median(data)
sd(data)

#4. Visualisasi Data

- Histogram

hist(data$CreditScore,
  main = "Histogram Bank Churn Modeling",
  xlab = "CreditScore",
  col = "Blue"
)

hist(data$HasCrCard,
     main = "Histogram Bank Churn Modeling",
     xlab = "HasCrCard",
     col = "Purple"
)

hist(data$NumOfProducts,
     main = "Histogram bank Churn Modeling",
     xlab = "NumofProducts",
     col = "Red"
)

ggsave("output/Histogram_NumofProducts.png")

- Scatter plot

library(ggplot2)

ggplot(data, aes(x = as.numeric(Balance), y = CreditScore)) +
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE) + 
  labs(title = "Diagram Scatter Plot")

ggsave("output/Scatter_Plot Diagram.png")

- Box plot(
  
ggplot(data, aes(y = CreditScore)) +
  geom_boxplot(fill = "purple") +
  labs(title = "Boxplot Credit Score Bank")
)

ggsave("output/Box_Plot Diagram.png")


#5. Analisis Hubungan Variabel


cor.test(as.numeric(data$CreditScore),
         as.numeric(data$EstimatedSalary))

#Nilai yang didapatkan (P-value) sebesar 0.8899, sehingga memberikan kesimpulan bahwa
#hubungan korelasi antar 2 variabel tersebut kuat (Nilai dari credit score berpengaruh juga
#pada estimasi gaji)

#6. Model Regresi

model <- lm(CreditScore ~ as.numeric(Tenure) + as.numeric(HasCrCard)
            + as.numeric(EstimatedSalary), data = data)

summary(model)

#Nilai R squared: -0.0002673
#Nilai koefisien regresi: 0.000651402
#Berdasarkan dari hasil regresi antara Tenure, Has Credit Card, dan Estimated Salary ditemukan  bahwa
#variabel-variabel tersebut tidak signifikan secara statistik dan tidak punya pengaruh (Karena tidak ada bintangnya juga)


