pkgname <- "Dark"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('Dark')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("AICc")
### * AICc

flush(stderr()); flush(stdout())

### Name: AICc
### Title: Akaike information criterion
### Aliases: AICc
### Keywords: models regression utilities math

### ** Examples

AICc(dark)



cleanEx()
nameEx("BestFit")
### * BestFit

flush(stderr()); flush(stdout())

### Name: BestFit
### Title: BestFit
### Aliases: BestFit
### Keywords: models optimization regression utilities data

### ** Examples

tmp <- TestData(0:20)
P<-Start(tmp,100)
MSC<-ModelSelect(tmp, P)
BestFit(tmp, MSC)



cleanEx()
nameEx("BootDark")
### * BootDark

flush(stderr()); flush(stdout())

### Name: BootDark
### Title: BootDark
### Aliases: BootDark
### Keywords: models optimization regression utilities data

### ** Examples

set.seed(1234)
Time<- seq(0,20)
tmp<- TestData(Time)
P<-Start(tmp,1000)
MSC<-ModelSelect(tmp, P)
tmp2<-BestFit(tmp, MSC)
tmp3<-MultiStart(tmp2,10)
BootDark(tmp3,50)



cleanEx()
nameEx("Dark-package")
### * Dark-package

flush(stderr()); flush(stdout())

### Name: Dark-package
### Title: Dark: A package to analyse dark adaptation data
### Aliases: Dark-package Dark
### Keywords: package

### ** Examples

set.seed(1234)
Time<- seq(0,20)
tmp<- TestData(Time)
P<-Start(tmp,1000)
MSC<-ModelSelect(tmp, P)
tmp2<-BestFit(tmp, MSC)
tmp3<-MultiStart(tmp2,10)
BootDark(tmp3,50) 



cleanEx()
nameEx("Declutter")
### * Declutter

flush(stderr()); flush(stdout())

### Name: Declutter
### Title: Declutter
### Aliases: Declutter
### Keywords: utilities models

### ** Examples

set.seed(123)
Time  <-c(0, 0.02, 1, 2,  3, 3.02,  5, 6, 6.02, 7, 9, 9.02, 11, 
12, 12.02, 13, 15, 15.02, 16, 18, 18.02, 20) 
# with duplicated times
set.seed(1234)
tmp <- TestData(Time, sse=0.05) 
## Not run: plot(tmp$time, tmp$thrs, ylim=c(-4,0))
tmp <- Declutter(tmp)
## Not run: points(tmp$time, tmp$thrs, col='red', pch=16)




cleanEx()
nameEx("GetData")
### * GetData

flush(stderr()); flush(stdout())

### Name: GetData
### Title: GetData
### Aliases: GetData
### Keywords: utilities models data

### ** Examples

set.seed(1234)
tmp <- GetData()



cleanEx()
nameEx("H")
### * H

flush(stderr()); flush(stdout())

### Name: H
### Title: This is a simple switch function.
### Aliases: H
### Keywords: math utilities logistic models data

### ** Examples


x <- seq(0, 20, by=0.1)
k <- 10
t <- 10
op <- par(las=1, bty='n')
## Not run: plot(x,H(x,k,t), 'l')
par(op)



graphics::par(get("par.postscript", pos = 'CheckExEnv'))
cleanEx()
nameEx("ModelSelect")
### * ModelSelect

flush(stderr()); flush(stdout())

### Name: ModelSelect
### Title: ModelSelect
### Aliases: ModelSelect
### Keywords: model optimization

### ** Examples

set.seed(1234)
tmp<- TestData(0:20)
P<-Start(tmp)
ModelSelect(tmp,P)



cleanEx()
nameEx("MultiStart")
### * MultiStart

flush(stderr()); flush(stdout())

### Name: MultiStart
### Title: MultiStart
### Aliases: MultiStart
### Keywords: optimization model

### ** Examples

set.seed(1234)
Time<- seq(0,20)
tmp<- TestData(Time)
P<-Start(tmp,1000)
MSC<-ModelSelect(tmp, P)
tmp2<-BestFit(tmp, MSC)
tmp3<-MultiStart(tmp2,10)



cleanEx()
nameEx("P3")
### * P3

flush(stderr()); flush(stdout())

### Name: P3
### Title: Three parameter model.
### Aliases: P3
### Keywords: models optimization math utilities data

### ** Examples

set.seed(1234)
x <- 0:20
a <- c(-1.00,  1.00,  1.00, -0.24,  6.00,  0.20, 13.00)
tmp <- TestData(x, a)
y <- tmp$resid
P3(TRUE)
# Describes the model

P3(a)
# The sum of squared residuals

P3(a,x)
# The fitted thresholds for given parameters 'theta' and times 'x'




cleanEx()
nameEx("P5c")
### * P5c

flush(stderr()); flush(stdout())

### Name: P5c
### Title: Five parameter model.
### Aliases: P5c
### Keywords: models optimization math utilities data

### ** Examples

set.seed(1234)
x <- 0:20
a <- c(-1.00,  1.00,  1.00, -0.24,  6.00,  0.20, 13.00)
tmp <- TestData(x, a)
y <- tmp$resid
P5c(TRUE)
# Describes the model

P5c(a)
# The sum of squared residuals

P5c(a,x)
# The fitted thresholds for given parameters 'theta' and times 'x'




cleanEx()
nameEx("P6c")
### * P6c

flush(stderr()); flush(stdout())

### Name: P6c
### Title: A six parameter model
### Aliases: P6c
### Keywords: models optimization math utilities data

### ** Examples

set.seed(1234)
x <- 0:20
a <- c(-2, 2, 1/2, 10, 3, 1/8)
# P6c(TRUE)
# Describes the model

# P6c(a)
# The sum of squared residuals

# P6c(a,x)
# The fitted thresholds for given parameters 'a' and times 'x'




cleanEx()
nameEx("P7c")
### * P7c

flush(stderr()); flush(stdout())

### Name: P7c
### Title: Seven parameter model
### Aliases: P7c
### Keywords: models optimization math utilities data

### ** Examples

set.seed(1234)
x <- 0:20
a <- c(-1.00,  1.00,  1.00, -0.24,  6.00,  0.20, 13.00)
tmp <- TestData(x, a)
y <- tmp$resid
# P7c(TRUE)
# Describes the model

# P7c(a)
# The sum of squared residuals

# P7c(a,x)
# The fitted thresholds for given parameters 'a' and times 'x'




cleanEx()
nameEx("Start")
### * Start

flush(stderr()); flush(stdout())

### Name: Start
### Title: Start
### Aliases: Start
### Keywords: model utilities

### ** Examples

set.seed(1234)
tmp<-TestData(0:20)
Start(tmp, 10)



cleanEx()
nameEx("TestData")
### * TestData

flush(stderr()); flush(stdout())

### Name: TestData
### Title: Data that can be used to test other scripts.
### Aliases: TestData
### Keywords: data dataset

### ** Examples

set.seed(1234)
x <- seq(0,20)
tmp <- TestData(x)
tmp




cleanEx()
nameEx("dark")
### * dark

flush(stderr()); flush(stdout())

### Name: dark
### Title: Dark adaptation data.
### Aliases: dark
### Keywords: datasets

### ** Examples

data(dark)
## load(dark)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
