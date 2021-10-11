# MechaCar_Statistical_Analysis
Module 15 - R

## Project Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

#### Deliverable 1
- [x] 1. The MechaCar_mpg.csv file is imported and read into a dataframe
- [x] 2. An RScript is written for a linear regression model to be performed on all six variables
- [x] 3. An RScript is written to create the statistical summary of the linear regression model with the intended p-values
- [x] 4. There is a summary that addresses all three questions

#### Deliverable 2
- [x] 1. The Suspension_Coil.csv file is imported and read into a dataframe
- [x] 2. An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots
- [x] 3. An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot
- [x] 4. There is a summary that addresses the design specification requirement for all the manufacturing lots and each lot individually

#### Deliverable 3
- [x] 1. An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population
- [x] 2. An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population
- [x] 3. There is a summary of the t-test results across all manufacturing lots and for each lot

#### Deliverable 4
- [x] 1. A metric to be tested is mentioned
- [x] 2. A null hypothesis or an alternative hypothesis is described
- [x] 3. A statistical test is described to test the hypothesis
- [x] 4. The data for the statistical test is described


[RScript file](https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/MechaCarChallenge.R) 


## Resources 

- Software: R Version 4.1.1 GUI 1.77 High Sierra build, RStudio 2021.09.0

## Linear Regression to Predict MPG


<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/Images/Deliverable%201.2.png">
</kbd>  &nbsp;
</p>


Vehicle length and ground clearance, as well as intercept, are statistically unlikely to provide random amounts of variance to the linear model (once the values for Pr(>|t|) are < 0.05.) In other words, **the vehicle length and ground clearance have a significant impact on the mpg efficiency**. Vehicle weight is also very close to the significance level and should be mentioned. 

Variables p-values can be used to determine which terms to keep in the regression model, in this case, we can consider removing Spoiler Angle and AWD, for example. 


<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/Images/Deliverable%201.3%20.png">
</kbd>  &nbsp;
</p>


The intercept term is the amount of variability in the dependent variable (mpg) when the independent ones are equal to zero and the Pr(>|t|) value for the intercept is going to tell us if the variables analyzed have a strong relationship with the vehicle's mpg. The calculated p-value for the intercept is smaller than the significance level, it's statistically significant and rejects the null hypothesis:

**Ho : The slope of the linear model is zero (no significant linear relationship)**


The R-squared value represents how well the regression model approximates real-world data points. The results show that roughly 70% of the mpg variability is explained using the linear model with multiple variables: length, weight, spoiler angle, ground clearance and drivetrain. 

There are definitely other variables that can help explain mgp variability that have not been included in the model. In order to predict with more precision more information is needed, 30% uncertainty is unacceptable when designing a new car model for example. 



## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/Images/Deliverable%202.2.png">
</kbd>  &nbsp;
</p>

The **current manufacturing data meets this design specification** once the variance is around 60. However, this sample includes 3 different lots that should be analyzed individually, if the lots are statistically similar the manufacturing process is probably stable and we can expect similar results in the future. 

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/Images/Deliverable%202.3.png">
</kbd>  &nbsp;
</p>


The results show that **not all the manufacturing lots meet the design specification**:

:white_check_mark:  The first lot has an average of 1500, which is exactly what we want from the process.

:white_check_mark:  The second lot is still respecting the tolerance, for now nothing unusual can be observed.

:negative_squared_cross_mark:  The third lot has a variance of 170, quite alarming comparing to the other lots. 

The third lot is raising a red flag, something out of the normal happened in the process between the production of lot number 1 and 3. Machine calibration, different employees and shifts, unexpected shortages, a lot can happen to affect the normal activity of a manufacturing operation. The company should investigate further to understand the abnormality in the third lot and address the necessary repairs to avoid producing more bad lots in the future. Not just a waste of money and resources for the company, this variability can bring safety issues for the final consumer.    

 
 ## T-Tests on Suspension Coils
 
 Similarly to the last topic we are going to analyze the lots individually. The t-test for the lot number 1 shows a p-value of 1, which means that the mean value for the lot is the same as the intended mean: 1500. As stated before, lot 1 is a perfect representation of what we want from our operations.  

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/b47ee172a0800a4bfceee0f2d48caa19956f039f/Images/Deliverable%203.2%20Lot1.png">
</kbd>  &nbsp;
</p>


A p-value of 0.60 means that there is a probability of 60% of obtaining that result by chance when using lot number 2.  

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/b47ee172a0800a4bfceee0f2d48caa19956f039f/Images/Deliverable%203.2%20Lot2.png">
</kbd>  &nbsp;
</p>

When we get to lot number 3 p-value is 0.04, below our significance level of 5%. Values close to 0 indicate that the observed difference is unlikely to be due to chance. In other words, lot 3 is out of the MechaCar's design specification and this was probably caused by special circumstances in the process that should be investigated. 

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/b47ee172a0800a4bfceee0f2d48caa19956f039f/Images/Deliverable%203.2%20Lot3.png">
</kbd>  &nbsp;
</p>

The most important part about the t-test comes when we see the result of the whole sample including all lots. 

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/b47ee172a0800a4bfceee0f2d48caa19956f039f/Images/Deliverable%203.1.png">
</kbd>  &nbsp;
</p>

P-values very close to the cutoff (0.05) are considered to be marginal (can go either way) and should be reported as relevant information as well. While in the second topic the variance for the whole sample didn't raise a flag that something might be wrong with the process, this time the p-value is trying to give us a clue that we should investigate the lots separately.  



## Study Design: MechaCar vs Competition

The environmental impact of a vehicle is very discussed nowadays, MechaCar could invest in an emissions control program to limit vehicle's exhaust pollution. But before making any decisions is important to see where the company stands against the competition. 

Emissions measured on chassis dynamometers are usually expressed in grams of pollutant per unit of traveled distance (g/km). We can start obtaining data (g/km measurements) from a sample of vehicles from MechaCar that meet the eligibility specifications and compare to the country's average: Canadians vehicles emit on average [206 grams of CO2 (gCO2) per kilometre](https://www.nationalobserver.com/2019/09/04/analysis/canadian-cars-are-worlds-dirtiest-ev-age-essential).

We can do a simple one-sample t-test with the MechaCar's sample measurements and the 206g/km as the population mean, or use a two-sample t-test in case we have data available about the competitor's emission efficiency. 

For a one-sample t-test we can define Ho and Ha as :

**Ho : MechaCar vehicles emit less pollutants than then national average (< 206g/km)**

**Ha : MechaCar vehicles emit more pollutants than then national average**

When we use the sample measurements and put the data through the hypothesis test we can expect: 

- p-values less than 0.05 that would reject the null hypothesis and show that MechaCar do not emit less pollutants than the national average.
- p-values more than 0.05 what would fail to reject the null hypothesis.

The smaller the p-value, the stronger the evidence that you should reject the null hypothesis.

The significance level tells us that there is a probability of 0.05 that we will mistakenly reject the claim that MechaCar vehicles emit less pollutants than the average.
