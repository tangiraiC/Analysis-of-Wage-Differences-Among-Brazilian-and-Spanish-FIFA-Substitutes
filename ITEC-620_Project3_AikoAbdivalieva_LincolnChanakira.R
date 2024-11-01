setwd("/Users/aikokuro/Documents/my R projects/Project3")
library(dplyr)
library(e1071)
library(ggplot2)
library(car)
library(pwr)
library(effsize)

fifa = read.csv("CLEAN_FIFA22_official_data.csv")

#creating a subset
brazil_spain_sub <- fifa %>%
  filter(Nationality %in% c("Brazil", "Spain"), Position == "SUB", Wage... > 0)

#checking the data type
str(brazil_spain_sub$Nationality)  # character
str(brazil_spain_sub$Wage)  # numeric

#checking for missing values
colSums(is.na(brazil_spain_sub))

#renaming "Wage..." into "Wage"
brazil_spain_sub <- brazil_spain_sub %>%
  rename(Wage = `Wage...`) 

#univariate analysis
nat_sum = table(brazil_spain_sub$Nationality)
nat_sum
nat_sum_pc = prop.table(nat_sum) * 100
nat_sum_pc

summary(brazil_spain_sub$Wage)

sd(brazil_spain_sub$Wage, na.rm = TRUE)

e1071::skewness(brazil_spain_sub$Wage, na.rm = TRUE)

#bivariate chart
#used chatgpt for visualization assistance
ggplot(brazil_spain_sub, aes(x = Nationality, y = Wage, fill = Nationality)) +
  geom_bar(stat = "summary") +
  labs(title = "Wages of Brazilian and Spanish Substitutes",
       x = "Nationality",
       y = "Wage",
       fill = "Nationality") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

#checking for normalities in distribution before t-test
qqnorm(brazil_spain_sub$Wage[brazil_spain_sub$Nationality == "Brazil"])
qqline(brazil_spain_sub$Wage[brazil_spain_sub$Nationality == "Brazil"])
qqnorm(brazil_spain_sub$Wage[brazil_spain_sub$Nationality == "Spain"])
qqline(brazil_spain_sub$Wage[brazil_spain_sub$Nationality == "Spain"])

# to check variances differences before t-test
wage_brazil = subset(brazil_spain_sub, Nationality == "Brazil")$Wage
wage_spain  = subset(brazil_spain_sub, Nationality == "Spain")$Wage
var_test_result = var.test(wage_brazil, wage_spain)
print(var_test_result)

# t-test
t_test = t.test(Wage ~ Nationality, data = brazil_spain_sub, var.equal = TRUE)
print(t_test)

#Cohen's d 
cohen_d = cohen.d(brazil_spain_sub$Wage ~ brazil_spain_sub$Nationality)
print(cohen_d)

#power analysis
power_result = pwr.t2n.test(
  n1 = 311,
  n2 = 445, 
  d = 0.11, 
  sig.level = 0.05)


