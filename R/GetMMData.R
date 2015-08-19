GetMMData <- function(Sx, Lo, V) {
  require(gdata)
  if (missing(Sx)) 
    Sx = 2
  if (Sx<10) Sx<- paste0('0', Sx, sep='')
  if (Lo == 1) {
    DoI <- "~/Box Sync/JMFK-MM/Maastricht Data/DA_NL_"
  } else {
    DoI <- "~/Box Sync/JMFK-MM/Manchester Data/NEW DA_MAN_"
  }
  FoI <- paste0(DoI,Sx,'.xls', sep='')
  tmp <- read.xls(FoI, skip=1)
  if(V==1)  idx<- c(29,30)
  if(V==2)  idx<- c(42,43)
  if(V==3)  idx<- c(54,55)
  if(V==4)  idx<- c(66,67)
  
  tmp <- tmp[,idx]
  tim <- as.numeric(as.character(tmp[,1]))
  thr <- as.numeric(as.character(tmp[,2]))/-20
  idx <- !is.na(tim) & !is.na(thr)
  time <- tim[idx]
  thrs <- thr[idx]
  idx <- thrs!=0
  if (sum(idx)==0) stop("Missing data")
  time <- time[idx]
  thrs <- thrs[idx]
  idx<- time >=0
  time <- time[idx]
  thrs <- thrs[idx]  
  
  obj<- NULL
  
  obj$time <- time
  obj$thrs<- thrs
  obj$data <- paste0('MM_Loc',Lo,'_Sx_',Sx, '_visit_',V)
  class(obj) <- 'dark'
  obj
  
}