#' @export 

ModelSelect <- function(obj, P) {

	.GlobalEnv$x <- obj$time
	.GlobalEnv$y <- obj$thrs

	O <- P[,1:6]
	O[,1] <- min(obj$thrs)
	O[,2] <- P[,2]
	O[,3] <- P[,3]
	O[,4] <- P[,5]
	O[,5] <- P[,2] 
	O[,6] <- -P[,4]
	
	param <- matrix(0, 4, 7)
	idx <- c(3, 5, 6, 7)
	AIC <- numeric(7)
	mFn <- c(1, 1, P3, 1, P5c, P6c, P7c)
	jj = 1
	
	for (ii in idx) {
		Fn = mFn[[ii]]

		if(ii ==6){
		    Out <- apply(O, 1, Fn)
		    oP <- O[which(Out == min(Out)), ]
		    oPval <- Out[which(Out == min(Out))]
		    Opt <- stats::optim(oP[1:ii],Fn)
		    z=0
		    while (Opt$con){
		      z=z+1
		      Opt <- stats::optim(Opt$par, Fn)
		      if(z>4) {break}
		    }
		    init <- oP[1:Fn(1)$Pn]
		    opt <- Opt$par[1:Fn(1)$Pn]
		    param[jj, 1:Fn(1)$Pn] <- opt
		    val <- Opt$val
		    Pn <- Fn(1)$Pn
		    Mod <- Fn(1)$Mod
		    # builds the dark object to pass to AICc
		    obj$init = init
		    obj$opt = opt
		    obj$val = val
		    obj$Pn = Pn
		    obj$Mod = Mod
		    AIC[ii] <- AICc(obj)
		  }else{
		    Out <- apply(P, 1, FUN = Fn)
		    oP <- P[which(Out == min(Out)), ]
		    oPval <- Out[which(Out == min(Out))]
		    Opt <- stats::optim(oP[1:ii], Fn)
		    z=0
		    while (Opt$con){
		      z=z+1
		      Opt <- stats::optim(Opt$par, Fn)
		      if(z>4) {break}
		    }
		    init <- oP[1:Fn(1)$Pn]
		    opt <- Opt$par[1:Fn(1)$Pn]
		    param[jj, 1:Fn(1)$Pn] <- opt
		    val <- Opt$val
		    Pn <- Fn(1)$Pn
		    Mod <- Fn(1)$Mod
		    # builds the dark object to pass to AICc
		    obj$init = init
		    obj$opt = opt
		    obj$val = val
		    obj$Pn = Pn
		    obj$Mod = Mod
		    AIC[ii] <- AICc(obj)
		  }
		
		jj = jj + 1
	}

	on.exit(rm(list = c("x", "y"), envir = .GlobalEnv))
  
	# put in here some error checking e.g. negative alpha or positive S2
	# and return an AIC that disables that model choice and tells the 
	# user what was wrong with the estimates
	
	list(AIC = AIC, param = param)
}
