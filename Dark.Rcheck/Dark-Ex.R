pkgname <- "Dark"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "Dark-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('Dark')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("AICc")
### * AICc

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: AICc
### Title: Akaike information criterion
### Aliases: AICc
### Keywords: ~kwd1 ~kwd2

### ** Examples

AICc(dark)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("AICc", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("BestFit")
### * BestFit

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: BestFit
### Title: BestFit
### Aliases: BestFit
### Keywords: ~kwd1 ~kwd2

### ** Examples

tmp <- TestData(0:20)
P<-Start(tmp,100)
MSC<-ModelSelect(tmp, P)
BestFit(tmp, MSC)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("BestFit", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("BootDark")
### * BootDark

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: BootDark
### Title: BootDark
### Aliases: BootDark
### Keywords: ~kwd1 ~kwd2

### ** Examples

set.seed(1234)
Time<- seq(0,20)
tmp<- TestData(Time)
P<-Start(tmp,1000)
MSC<-ModelSelect(tmp, P)
tmp2<-BestFit(tmp, MSC)
tmp3<-MultiStart(tmp2,10)
BootDark(tmp3,50)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("BootDark", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("Dark-package")
### * Dark-package

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
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



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("Dark-package", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("Declutter")
### * Declutter

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: Declutter
### Title: Declutter
### Aliases: Declutter
### Keywords: ~kwd1 ~kwd2

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




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("Declutter", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("GetData")
### * GetData

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: GetData
### Title: GetData
### Aliases: GetData
### Keywords: ~kwd1 ~kwd2

### ** Examples

set.seed(1234)
tmp <- GetData()



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("GetData", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("H")
### * H

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: H
### Title: This is a simple switch function.
### Aliases: H
### Keywords: ~kwd1 ~kwd2

### ** Examples


x <- seq(0, 20, by=0.1)
k <- 10
t <- 10
op <- par(las=1, bty='n')
## Not run: plot(x,H(x,k,t), 'l')
par(op)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("H", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
graphics::par(get("par.postscript", pos = 'CheckExEnv'))
cleanEx()
nameEx("ModelSelect")
### * ModelSelect

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: ModelSelect
### Title: ModelSelect
### Aliases: ModelSelect
### Keywords: ~kwd1 ~kwd2

### ** Examples

set.seed(1234)
tmp<- TestData(0:20)
P<-Start(tmp)
ModelSelect(tmp,P)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("ModelSelect", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("MultiStart")
### * MultiStart

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: MultiStart
### Title: MultiStart
### Aliases: MultiStart
### Keywords: ~kwd1 ~kwd2

### ** Examples

set.seed(1234)
Time<- seq(0,20)
tmp<- TestData(Time)
P<-Start(tmp,1000)
MSC<-ModelSelect(tmp, P)
tmp2<-BestFit(tmp, MSC)
tmp3<-MultiStart(tmp2,10)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("MultiStart", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("P3")
### * P3

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: P3
### Title: Three parameter model.
### Aliases: P3
### Keywords: ~kwd1 ~kwd2

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




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("P3", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("P5c")
### * P5c

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: P5c
### Title: Five parameter model.
### Aliases: P5c
### Keywords: ~kwd1 ~kwd2

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




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("P5c", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("P6c")
### * P6c

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: P6c
### Title: A six parameter model
### Aliases: P6c
### Keywords: ~kwd1 ~kwd2

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




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("P6c", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("P7c")
### * P7c

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: P7c
### Title: Seven parameter model
### Aliases: P7c
### Keywords: ~kwd1 ~kwd2

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




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("P7c", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("Start")
### * Start

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: Start
### Title: Start
### Aliases: Start
### Keywords: ~kwd1 ~kwd2

### ** Examples

set.seed(1234)
tmp<-TestData(0:20)
Start(tmp, 10)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("Start", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("TestData")
### * TestData

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: TestData
### Title: Data that can be used to test other scripts.
### Aliases: TestData
### Keywords: ~kwd1 ~kwd2

### ** Examples

set.seed(1234)
x <- seq(0,20)
tmp <- TestData(x)
tmp




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("TestData", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("dark")
### * dark

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: dark
### Title: Dark adaptation data.
### Aliases: dark
### Keywords: datasets

### ** Examples

data(dark)
## load(dark)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("dark", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
