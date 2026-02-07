#Jika 'W value mendekati 0' dan 'P-Value <= a -> Tolak H0
#Jika 'W value mendekati 1 dan 'P-Value > a -> Gagal menolak H0

set.seed

data_normal <- rnorm(
  n = 100,
  mean = 80,
  sd = 10
  
)

shapiro.test(data_normal)

t.test(data_normal, mu=78)

