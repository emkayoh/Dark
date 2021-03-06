#' @export 

BootDark <- function(obj, R, graph, progress = F) {
	.GlobalEnv$x <- obj$time
	.GlobalEnv$y <- obj$thrs

	mFn <- c(1, 1, P3, 1, P5c, P6c, P7c)

	#set.seed(1234)
	if (missing(R)) 
		R = 400
	if (missing(graph)) 
		graph = FALSE


	Parms = NULL
	qJK <- function(a) stats::quantile(a, c(2.5, 50, 97.5)/100)

	if (is.list(obj)) {
		out <- obj
		out$call <- NULL
		x <- unlist(obj$time)
		y <- unlist(obj$thrs)
		p = obj$opt
		resid <- obj$resid
		fit <- obj$fit
		val <- obj$val
		AIC <- obj$AIC
		if (is.null(obj$Pn)) 
			Pn = 7
		else Pn <- obj$Pn
		Mod <- obj$Mod
	} else {
		x <- x
		Y <- y
	}

	if (is.null(p)) {
		p = obj$init
	}
	Fn = mFn[[Pn]]

	if (is.null(resid)) {
		O <- stats::optim(p, Fn)
		while (O$con) {
			O <- stats::optim(O$par, Fn)
		}
		p <- O$par
		fit <- Fn(p, x)
		resid <- (y - fit)
		val <- O$val
	}
	if (progress) 
		pb <- utils::txtProgressBar(min = 0, max = R, style = 3)

	BS <- matrix(0, R, 7) #NULL
	for (ii in 1:R) { # put apply variant here
		y <<- fit + sample(resid, replace = T)
		BS[ii, 1:Pn] <- stats::optim(p, Fn)$par[1:Pn]
		# coud be worthwhile investigating a 
		# while loop here to ensure convergence

		if (progress) 
			utils::setTxtProgressBar(pb, ii)
	}

	if (progress) 
		close(pb)

	BSq <- round(apply(BS, 2, qJK), 3)

	Boot <- t(BSq)
	#   S3<- -(Boot[4,]+Boot[6,])
	if(Pn == 6){
	  row.names(Boot) <- c("AT", "CC", "1/Tau_c", "Alpha", "Offset", "1/Tau_r", "")
	}else{
	row.names(Boot) <- c("CT", "CC", "Tau", "S2", "Alpha", "*S3*", "Beta")
}
	valid <- as.integer((Boot[, 1] * Boot[, 3]) > 0)
	weight <- 1/abs(Boot[, 1] - Boot[, 3])

	out$call = match.call()
	out$time = obj$time
	out$thrs = obj$thrs
	out$resid = resid
	out$fit = fit
	out$Bootstrap = Boot
	out$opt = obj$opt
	out$weight = weight
	out$valid = valid
	out$data = obj$data
	out$Mod = obj$Mod
	out$Pn = obj$Pn
	out$AIC = obj$AIC
	out$R2 <- 1 - (stats::var(resid)/stats::var(obj$thrs))


	if (graph) {
		XL <- expression(bold(Time ~ (min)))
		YL <- expression(bold(Threshold ~ (LU)))
		X<- seq(0, max(x), by=0.2)
		graphics::plot(x, y, xlab = XL, ylab = YL)
		graphics::lines(X, Fn(p, X), col = 2)

		graphics::lines(X, Fn(BSq[1, ], X), col = 3)
		graphics::lines(X, Fn(BSq[3, ], X), col = 3)

	}
	on.exit(rm(list = c("x", "y"), envir = .GlobalEnv))

	class(out) = "dark"
	return(out)
}