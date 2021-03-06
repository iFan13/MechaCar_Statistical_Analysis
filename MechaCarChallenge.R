library(dbplyr)
library(tidyverse)

MechaCar<-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar))

SuspensionCoil <-read.csv(file='Suspension_Coil.csv',header=TRUE, ",", check.names = F, stringsAsFactors = F)
total_summary <- SuspensionCoil %>% summarize(Mean = mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))

t.test(SuspensionCoil$PSI,mu=mean(SuspensionCoil$PSI))
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot1')$PSI, mu=mean(SuspensionCoil$PSI))
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot2')$PSI, mu=mean(SuspensionCoil$PSI))
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot3')$PSI, mu=mean(SuspensionCoil$PSI))

t.test(SuspensionCoil$PSI,mu=1500)
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(SuspensionCoil,Manufacturing_Lot=='Lot3')$PSI, mu=1500)