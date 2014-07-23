## Introduction

The Shiny app is part of the course project of the *Developing Data Products* course in Coursera. This app uses data from the `mtcars` dataset, the data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

A data frame with 32 observations on 11 variables.

- [, 1] mpg	Miles/(US) gallon
- [, 2]	cyl	Number of cylinders
- [, 3]	disp	Displacement (cu.in.)
- [, 4]	hp	Gross horsepower
- [, 5]	drat	Rear axle ratio
- [, 6]	wt	Weight (lb/1000)
- [, 7]	qsec	1/4 mile time
- [, 8]	vs	V/S
- [, 9]	am	Transmission (0 = automatic, 1 = manual)
- [,10]	gear	Number of forward gears
- [,11]	carb	Number of carburetors

For the purpose of the application, we only worked with the `mpg`, `cyl` and `am` variables.

## Description of the User Interface

The Shiny app consists in a `ggplot2` boxplot of `mpg` by number of `cyl`, comparing *automatic*  and *manual* transmission. The app also displays the number of cars analyzed and the table with the data. The user needs to select the number of cylnders as a filter for the original data.

The outpust of the app are "reactive" and therefore should re-execute automatically when inputs change.


