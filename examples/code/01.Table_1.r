
# tableone package --------------------------------------------------------


library(tableone) 

dat = read.csv('examples/data/table1_data.csv')

listVars <- c("Age", "Gender", "Cholesterol", "SystolicBP", 
              "BMI", "Smoking", "Education")
catVars <- c("Smoking","Education")
table1 <- CreateTableOne(vars = listVars, 
                         data = dat, 
                         factorVars = catVars, 
                         strata = c("Gender"))
a <- print(table1, quote = TRUE, noSpaces = TRUE)
# a <- as.data.frame(a)
# write.csv(a, 'examples/result/result_tableone.csv')


# arsenal package ---------------------------------------------------------


library(arsenal)

dat = read.csv('examples/data/table1_data.csv')
tab1 <- tableby(Gender ~ Age + Cholesterol + SystolicBP + 
                  BMI + Smoking+ Education, data = dat)
sum_tab1 <- summary(tab1, text=TRUE)
sum_tab1

# tableby() function

mycontrols  <- tableby.control(numeric.stats = c("meansd"))
tab1 <- tableby(Gender ~ Age + Cholesterol + SystolicBP + 
                  BMI + Smoking+ Education, data = dat,
                control = mycontrols)
sum_tab1 <- summary(tab1, text=TRUE)
sum_tab1
