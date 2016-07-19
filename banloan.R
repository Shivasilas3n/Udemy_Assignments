##reads tha data file bankloan.csv
bankloan=read.csv("bankloan.csv")
View(bankloan)

##filter the data  as married only
bankloan_Married=subset(bankloan,marital=="married")

##married subjects with secondary and tertiary education level
married_educated=subset(bankloan,marital=="married"& (education=="secondary" | education=="tertiary") )
View(married_educated)

##subjects over 40
bankloan_over40=subset(bankloan,age>40)
View(bankloan_over40)

##single subjects under 35
single_under35=subset(bankloan,marital=="single" & age < 35 )
View(single_under35)

##subjects who have a loan and a balance over 1000
loan_balanceover1000=subset(bankloan,loan=="yes" & balance>1000)
View(loan_balanceover1000)