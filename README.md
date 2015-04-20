# Dark
This package is being developed at the University of Manchester and is used to analyse data collected in dark adaptation measurments and experiments. 

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
