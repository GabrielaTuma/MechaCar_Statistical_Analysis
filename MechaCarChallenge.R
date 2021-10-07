
library(dplyr)


# Deliverable 1.1 
Mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Deliverable 1.2 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_table)

# Deliverable 1.3 
summary (lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_table))



# Deliverable 2.1 
Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Deliverable 2.2
total_summary <- Coil_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep')

# Deliverable 2.3
lot_summary <- Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep')



# Deliverable 3.1
t.test(Coil_table$PSI,mu=1500,conf.level = 0.95)

# Deliverable 3.2
lot1_PSI <- subset(Coil_table, Manufacturing_Lot == "Lot1") 
lot2_PSI <- subset(Coil_table, Manufacturing_Lot == "Lot2") 
lot3_PSI <- subset(Coil_table, Manufacturing_Lot == "Lot3") 

# mean(lot1_PSI$PSI) -> 1500
# mean(lot2_PSI$PSI) -> 1500.02
# mean(lot3_PSI$PSI) -> 1496.14

t.test(lot1_PSI$PSI,mu=1500,conf.level = 0.95)
t.test(lot2_PSI$PSI,mu=1500,conf.level = 0.95)
t.test(lot3_PSI$PSI,mu=1500,conf.level = 0.95)







