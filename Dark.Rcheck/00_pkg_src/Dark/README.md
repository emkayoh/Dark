# Dark
Version 0.9.9

#### To Do
Test scripts 


#### Build Status 
[![Build Status](https://app.travis-ci.com/emkayoh/Dark.svg?branch=master)](https://app.travis-ci.com/emkayoh/Dark)

[![License](https://img.shields.io/badge/license-GPL%20%283%29-brightgreen.svg?style=flat)](https://www.gnu.org/licenses/gpl-3.0-standalone.html) 

<!-- [![Downloads](https://cranlogs.r-pkg.org/badges/Dark?color=brightgreen)](https://cran.rstudio.com/package=Dark)regular html comment --> 


### Introduction
This package is being developed at the University of Manchester and is used to analyse data collected in dark adaptation measurements and experiments. The data are collected in the Optometry department of the University of Manchester in the Faculty of Life Sciences. The principal investigator is Dr Ian J Murray, other members of the team include Drs Jeremiah Kelly, Humza Tahir and Laura Patryas.

Data are collected using custom built laboratory devices and computer controlled CRT units. The results are stored usually as text or spreadsheet files.  The first part of the workflow is to create a script that retrieves the data and presents it within `R` in a format that is usable. 

The suite of scripts uses a list referred to as a *dark* object, an initial work through of the data input is shown below. A first *GetData...* script is shown in `GetData.R`. This script can be used as a template to create a script specific to your own work. 

### Acknowledgement
This work presents independent research funded by the [National Institute for Health Research](https://www.nihr.ac.uk/) Invention for Innovation (NIHR i4i) Programme (ref: II-LB-0712-20001). The views expressed are those of the author(s) and not necessarily those of the NHS, the NIHR or the Department of Health.


### Contact
The author of the package can be contacted through  *jeremiah.kelly at mumacltd.com* or *emkayoh at mac.com*.

## Getting started

The scripts rely on the generation of a dark object, `obj`. This is just a list with at least two elements; `obj$time` and `obj$thrs`. 

Here is a way to do that using copy and paste from a spreadsheet. 

Select the time data, then in R type;

`obj<-NULL`

`obj$time<- scan()`

then paste and press return. 

```r 
obj<- NULL
obj$time<- scan()
1: 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
22: 
Read 21 items
```

repeat for the thresholds

```r
obj$thrs<- scan()
1: 0.1453469 -0.6968675 -1.0072369 -1.0166411 -0.6266554 -0.9923025 -1.1308808 -1.3437734 -1.5006185 -1.5132403 -1.9454982 -2.1601161 -2.3190977 -2.9759416 -2.6118030 -2.6488100 -2.4796138 -3.0221779 -2.8277825 -2.9462043 -3.1657820
22: 
Read 21 items
```
Finally set the class to `dark`

```r
class(obj)='dark'
```
The output should resemble this:

```r
> obj
$thrs
 [1]  0.1453469 -0.6968675 -1.0072369 -1.0166411 -0.6266554 -0.9923025 -1.1308808
 [8] -1.3437734 -1.5006185 -1.5132403 -1.9454982 -2.1601161 -2.3190977 -2.9759416
[15] -2.6118030 -2.6488100 -2.4796138 -3.0221779 -2.8277825 -2.9462043 -3.1657820

$time
 [1]  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

attr(,"class")
[1] "dark"
```
email or raise an issue for further help. 

<!--  #### Status

The package is under active development with releases to
[CRAN](https://cran.r-project.org) about once a month.

#### Author
Jeremiah MF Kelly
The University of Manchester

#### License
regular html comment --> 
