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

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?


Vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on the mpg efficiency. 

The R-squared value represents how well the regression model approximates real-world data points. Our results show that roughly 70% of the mpg variablilty (dependent) is explained using the linear model with multiple independent variables: length, weight, spoiler angle, ground clearance and drivetrain. 

The Pr(>|t|) value for the intercept is also statistically significant, the intercept term explains a significant amount of variability in the dependent variable (mpg) when the independent ones are equal to zero. 

there are definitely other variables that can help explain the variability of our dependent variable that have not been included in our model.

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/Images/Deliverable%201.2.png">
</kbd>  &nbsp;
</p>


<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/Images/Deliverable%201.3%20.png">
</kbd>  &nbsp;
</p>

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/Images/Deliverable%202.2.png">
</kbd>  &nbsp;
</p>


<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/21380f74162ea8e65d84db32d6ef3a71e9985f32/Images/Deliverable%202.3.png">
</kbd>  &nbsp;
</p>

 
 ## T-Tests on Suspension Coils
 
 then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
 
 A p value of 0.06 means that there is a probability of 6% of obtaining that result by chance when the treatment has no real effect. Because we set the significance level at 5%, the null hypothesis should not be rejected.
we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. 

The smaller the p-value, the stronger the evidence that you should reject the null hypothesis.

Values close to 0 indicate that the observed difference is unlikely to be due to chance

 large p-value (> 0.05) indicates weak evidence against the null hypothesis, so you fail to reject the null hypothesis
 
 p-values very close to the cutoff (0.05) are considered to be marginal (could go either way). Always report the p-value so your readers can draw their own conclusions.
 
<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/b47ee172a0800a4bfceee0f2d48caa19956f039f/Images/Deliverable%203.1.png">
</kbd>  &nbsp;
</p>

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/b47ee172a0800a4bfceee0f2d48caa19956f039f/Images/Deliverable%203.2%20Lot1.png">
</kbd>  &nbsp;
</p>


<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/b47ee172a0800a4bfceee0f2d48caa19956f039f/Images/Deliverable%203.2%20Lot2.png">
</kbd>  &nbsp;
</p>

<p align="center">
<kbd>
  <img src="https://github.com/GabrielaTuma/MechaCar_Statistical_Analysis/blob/b47ee172a0800a4bfceee0f2d48caa19956f039f/Images/Deliverable%203.2%20Lot3.png">
</kbd>  &nbsp;
</p>


## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?


You conduct a hypothesis test because you believe the null hypothesis, Ho, that the mean delivery time is 30 minutes max, is incorrect. Your alternative hypothesis (Ha) is that the mean time is greater than 30 minutes.

You randomly sample some delivery times and run the data through the hypothesis test, and your p-value turns out to be 0.001, which is much less than 0.05. In real terms, there is a probability of 0.05 that you will mistakenly reject the pizza place’s claim that their delivery time is less than or equal to 30 minutes.

Is the sample enough to 
