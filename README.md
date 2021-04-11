# MechaCar_Statistical_Analysis

## Overview

This repository hosts three technical analyses and a proposal for further statistical study in regards to production and manufacturing on AutosRUs' newest prototype, the MechaCar. The three technical analyses are:

* Linear Regression to predict MPG (Miles per Gallon)
* Summary Statistics on suspension coils
* T-test on suspension coils

## Resources

The software used in the aforementioned analyses is RStudio and the windows snipping tool to take screen captures for the images in the analyses below. In particular, the dplyr library and the language R is used within RStudio.

## Linear Regression to Predict MPG

Multiple linear regression was performed using the [dataset provided in this repository](MechaCar_mpg.csv) in attempts to predict the miles per gallon's depednency on the vehicle's length, weight, spoiler angle, ground clearance, and whether the vehicle is all wheel drive (AWD) or not. The results of the multiple linear progression are shown below.

![LinearRegression](/Resources/Deliverable1.PNG)

Two variables in particular provided a non-random amount of variance as pointed out by the summary using significance code '***': Vehicle length and ground clearance.
The slope of the linear model cannot be considered zero as further indicated by the remaining variables and their display of their significance. In particular, whether or not the vehicle has all wheel drive (AWD) and the spoiler angle have a significance code of ' ' which translates to an impact magnitude of 1 (or in other words, a depdenancy).

With the intercept having a significance rating of '***' (or 0), we can imply that the likelyhood of other variables and factors contributing to the variation were not included is low. Given the Multiple R-squared of 0.7149 (alternatively stated as: this model will predict accurately 71.49% of the time) and the p-value of 5.35e-11 (which is much smaller than the assumed significance level of 0.05%). The model is somewhat effective in that there are two significant variables (the spoiler angle and whether the vehicle is all wheel drive or not) but there is a remaining less significant variable in vehicle weight. Additional data or breakdown would be ideal to set variable significance to exclusively significance 0 or 1's.

## Summary Statistics on Suspension Coils

Two summary tables were created first using the [dataset provided in this repository](Suspension_Coil.csv). The dataset comprises of 150 vehicles identifiable by their ID, lot number and corresponding PSI of the spring. The first table identified the mean, median, variance and standard deviation of the whole dataset while the second table separated and identified the mean, median, variance and standard deviation by lot ID of production. Both tables are attached below.

![Total Summary Table](/Resources/Deliverable2.1.PNG)

![By Lot Summary Table](/Resources/Deliverable2.2.PNG)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the above summaries, the variance is within tolerable limits when taken as a whole. However, when investigating lots individually, Lot 3 is out of specification as it has a variance of 170. The remaining lots have much lower variance and shows that lot 3 has a high impact on the total lot's variance. Ideally, vehicles with coils from lot 3 should be recalled and replaced.

## T-Tests on Suspension Coils

With the variance of lot 3 being exposed, there is curiosity on how the lot passed the inspection process. It is possible that the mean PSI per lot is used in the inspection process then. Below are four T-tests: Full sample with respects to the [provided sample's population](Suspension_Coil.csv) mean, and comparisons of the full sample's mean lot1, lot2, and lot3.

![Full Sample T-Test](/Resources/TTestAll.PNG)
![Lot1 T-Test](/Resources/TTestLot1.PNG)
![Lot2 T-Test](/Resources/TTestLot2.PNG)
![Lot3 T-Test](/Resources/TTestLot3.PNG)

The null hypothesis for each of the T-tests with respect to the provided sample is "The true mean is equal to 1498.78".

* In the test of all to sample mean, the t-value is 0 suggesting the null hypothesis is true and the p-value is 1 (or 100%) suggesting the test is effective. However, this would be an expected result since the sample mean references itself.
* In the test of lot1 to sample mean, the t-value is not 0 suggesting the null hypothesis is false and the p-value is less than 0.05% suggesting that the test iseffective  given the significance of 0.05%.
* In the test of lot2 to sample mean, the t-value is not 0 suggesting the null hypothesis is false and the p-value is less than 0.05% suggesting the test is effective given the significance of 0.05%.
* In the test of lot3 to sample mean, the t-value is not 0 suggesting the null hypothesis is false and the p-value is greater than 0.05% suggesting that the test is not effective given the significance of 0.05%.

However, the total population mean has been revealed to be 1500. Thus it would be prudent to use the full population's mean (shown below)

![Full Population T-Test](/Resources/TTestAll1500.PNG)
![Lot11500 T-Test](/Resources/TTestLot11500.PNG)
![Lot21500 T-Test](/Resources/TTestLot21500.PNG)
![Lot31500 T-Test](/Resources/TTestLot31500.PNG)

The null hypothesis for each of the T-tests with respect to the provided population mean of 1500 is "The true mean is equal to 1500".

* In the test of all to population mean, the t-value is not 0 suggesting the null hypothesis is false and the p-value is greater than 0.05% suggesting that the test is not effective given the significance of 0.05%
* In the test of lot1 to population mean, the t-value is 0 suggesting the null hypothesis is true and the p-value is 1 or 100% suggesting the test is effective. Because lot1 is a subset of the sample of the population, this test and information is useful and suggests lot 1 is good to use.
* In the test of lot2 to population mean, the t-value is not 0 suggesting the null hypothesis is false and the p-value is greater than 0.05% suggesting that the test is not effective.
* In the test of lot3 to population mean, the t-value is not 0 suggesting the null hypothesis is false and the p-value is less than 0.05% suggesting that the test is effective.

## Study Design: MechaCar vs Competition

In order to compare MechaCar to the competition, measurable qualities can be used to compare to the competition. Consumers of MechaCar and it's competitors could be interested in the cost, fuel efficiency (on highway or city driving), horsepower, maintenance cost, or the safety rating of the MechaCar.

In this suggested study design, the safety rating of MechaCar is examined. The null hypothesis in this case would be "There is no difference in safety ratings distribution between MechaCar and it's competitors" versus the alternate hypothesis of "There is a difference in safety ratings distribution between MechaCar and it's competitors". The ideal situation would be that there is a difference but in a positive manner. This would therefore require a rejection of the null hypothesis and then follow up with a comparison of means. Because safety ratings are considered ordinal type data, the chi-squared test is required. To perform this test, additional information would be required. For instance, the class of vehicles (examples: 2-seater, compact, mid-size, mini-van, pick-up, subcompact, SUV) and their respective safety ratings would be required. Under the assumption that both MechaCar and it's competitors could have different makes and models within the class, it would be necessary to take the mean safety rating of the class to generate the contingency table for the chi-square test.
