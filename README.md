# Analysis-of-Wage-Differences-Among-Brazilian-and-Spanish-FIFA-Substitutes

**To:** Lucas Bennet, Senior Manager, FIFA Players Development

**From:** Aikokul Abdivalieva & Lincoln Chanakira, Analysts, Janzen Consulting Group

**Date:**  October 1, 2024

**Subject:** Analysis of Wage Differences Among Brazilian and Spanish FIFA Substitutes'

*“There is no statistically significant difference between Brazilian and Spanish substitute players’ wages”*

This memo aims to analyze and find any wage disparities between Brazilian and Spanish soccer players who are categorized by their position in the team: substitutes. Understanding wage differences based on nationality is crucial for identifying potential biases or trends that may influence talent acquisition strategies and compensation practices. In this analysis, we checked the assumption of equal variances using Variance Test, which showed no significant difference in variances, allowing us to use standard t-test with an alpha of 0.05.

The null hypothesis states that there is no significant difference in the average wages between Brazilian and Spanish substitutes. In contrast, the alternative hypothesis suggests that a significant difference exists between the two nationalities. Variables of interest:

● The independent variable (IV) is “Nationality”: indicates the nationality of each substitute player and focuses on two countries: Brazil and Spain.

● The dependent variable (DV) is “Wage”: measures each substitute player’s salary. The data has been subsetted by the variable “Position” to include only players who are substitutes (indicated as “SUB” in the dataset).

**Nationality**

● No missing values

● There are more substitute players in FIFA from Spain than from Brazil.
<img width="497" alt="Screenshot 2024-11-01 at 13 37 30" src="https://github.com/user-attachments/assets/9edac68b-1ce9-4b0e-9c22-e9d11c608b6b">


**Wage**

● Variable name was recoded from “Wage…” to “Wage”.

● Six values equal to 0 (zero) have been treated as missing values and excluded from the analysis to compare only known wages.

● No outliers; variances difference is insignificant

● Half of the substitutes earn less or equal the median wage, meanwhile a number of players earning higher wages, pull the mean and create a positive skewness.

● Large value of standard deviation indicates a big disparity in the wages of substitutes with some earning very little and some earning significantly more.

<img width="1066" alt="Screenshot 2024-11-01 at 13 38 06" src="https://github.com/user-attachments/assets/eca403f4-d372-42b7-96a1-3f47b5483859">


<img width="626" alt="Screenshot 2024-11-01 at 13 37 49" src="https://github.com/user-attachments/assets/5e1b01b3-2a20-4386-a653-8dcb36233c9a">


**T-Test Results Findings**

Obtaining a p-value of 0.1355, which is greater than the alpha level of 0.05, we can state that our findings are not statistically significant. Hence, we fail to reject the null hypothesis. This means there is not enough evidence to conclude that the average wages of Brazilian (M = 18,677.04, SD = 24,230.73) and Spanish substitutes (M = 15,984.76, SD = 24,230.73) are significantly different. Additionally, since the interval includes 0, it further supports the conclusion that there is no significant difference in wages and we cannot generalize the findings to the broader population of soccer substitutes. The Cohen’s d value (0.11) indicates that the difference in average wages between Brazilian and Spanish substitutes is negligible and small, which means that the results have small practical significance in a real world setting. The power level analysis result of 31.8% indicates that the test has a low probability of detecting a true effect if one exists. Potential weaknesses and gaps: With a power of 31.8%, the study has a high probability of Type II error, which means that even if a difference in wages between Spanish and Brazilian substitutes exists, our analysis may not detect it. To achieve an acceptable power level of 80%, it is recommended to increase sample size. Secondly, a very small effect size (0.11) indicates that any wage difference between Brazilian and Spanish substitutes is likely negligible, and this small effect is difficult to detect with the current sample size. To address this issue we can explore more players with higher wage differences in the future.

<img width="521" alt="Screenshot 2024-11-01 at 13 38 25" src="https://github.com/user-attachments/assets/1ba62d42-0ae1-4dc4-a3b2-9af40b4883ad">

**Conclusion:**
The analysis of wage disparities between Brazilian and Spanish soccer substitutes revealed no statistically significant difference at 0.05 alpha level, with a p-value of 0.1355 and a small effect size (Cohen’s d = 0.11). This indicates that the nationality of the players, whether it is Brazil or Spain, in the substitute positions in FIFA does not meaningfully impact their wage levels. However, the low power of 31.8% shows low reliability of current findings.

We recommend that more data should be explored to find other influencing factors before making decisions based on this analysis, since huge disparity in wages was found among substitutes themselves. It means, there are other influencing factors, such as experience, performance, etc. Hence, future studies should aim for larger sample sizes including other variables to identify actionable insights more effectively.
