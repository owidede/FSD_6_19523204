```{r}
library(ISLR)
library(lsr)
dataCredit <- Credit
head(dataCredit)
#Soal FSD Stastistik
#Number 1 Compute the mean and the median of Rating, Cards, and Age
mean(dataCredit$Rating)
mean(dataCredit$Age)
mean(dataCredit$Cards)
median(dataCredit$Rating)
median(dataCredit$Age)
median(dataCredit$Cards)
#Number 2 Compute the mode of Gender, Student, and Married
modeOf(dataCredit$Gender)
modeOf(dataCredit$Student)
modeOf(dataCredit$Married)
#Number 3 Compute the sample 10, 37, and 91 percentiles of Education
quantile(x = dataCredit$Education, probs = 0.1)
quantile(x = dataCredit$Education, probs = 0.37)
quantile(x = dataCredit$Education, probs = 0.91)
#Number 4 Compute the quartiles of Balance and its corresponding boxplot
quantile(x = dataCredit$Balance, c(0.25, 0.50, 0.75))
boxplot(dataCredit$Balance, horizontal = TRUE)
#Number 5 Compute the correlation and the scatter plot between pairs of Limit and Rating, Age and Card, Income and Education
LimitxRating <- data.frame(limit = dataCredit$Limit, rating = dataCredit$Rating)
LimitxRating
AgexCards <- data.frame(age = dataCredit$Age, cards = dataCredit$Cards)
AgexCards
IncomexEdu <- data.frame(income = dataCredit$Income, education = dataCredit$Education)
IncomexEdu
plot(dataCredit$Limit, dataCredit$Rating)
plot(dataCredit$Age, dataCredit$Cards)
plot(dataCredit$Income, dataCredit$Education)
#Soal FSD Polinomial 
#Untuk lolos kerja, alfi mengikuti ujian sebanyak 12x dari banyak cara dengan peluang yang ia miliki adalah sebanyak 1/4. Jika X adalah berapa kali alfi tidak lolos, maka berapa kemungkinan X=3 pada 10x ujian?
dbinom(x = 3, size = 12, prob = 1/4)
#mencari probabilitas kumulatif x=3
pbinom(q = 3, size = 12, prob = 1/4)
#mencari nilai persentil 50
qbinom(p = 0.25, size = 12, prob = 1/4)
#simulasi sampel 50 variabel acak
rbinom(n = 50, size = 12, prob = 1/4)

