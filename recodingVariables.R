##Using the file bankloan.csv

bankloan=read.csv("bankloan.csv")
View(bankloan)

##recode the variable marital as follows: married – 1, single – 0

require(plyr) ##package installation
bankloan$marital1=revalue(bankloan$marital,c("married"="1","single"="0"))


##recode the variable loan as follows: yes – 1, no – 0
bankloan$loan1=revalue(bankloan$loan,c("yes"="1","no"="0"))
 
## . recode the variable balance as follows: under 500 – 1, betweeen 501 and 1000 – 2, over 1000 – 3
 
 bankloan$balance1=cut(bankloan$balance, breaks =c(-Inf,500,1000,Inf),labels = c("1","2","3"))
 
 View(bankloan)
 
