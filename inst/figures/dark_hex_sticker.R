# hexSticker
rm(list =ls())
library(hexSticker)
library(ggplot2)
library(Dark)

time <- dark$time
idx <- time < 18 & time > 0
time <- dark$time[idx]
thrs <- dark$thrs[idx]
nobs <- length(time)
idx <- seq(0, nobs, by = 3)
time <- dark$time[idx]
thrs <- dark$thrs[idx]
# time <- seq(0, 7, by = 0.25)
 dark$opt[4] <- -0.23

thrs2 <- P5c(dark$opt[1:5], time)
df <- data.frame(time, thrs, thrs2)


s <- ggplot(aes(x = time, y = thrs), data = df) + 
	geom_point(color = "#8B858A", size = 1) + 
	geom_line(aes(x = time, y = thrs2), data = df, color = "#B35D4D") + 
	theme_void() + theme_transparent()

sticker( package = "Dark", p_size = 20, p_color = "#B35D4D",#p_y = 1.55,
	# hexagon 
	h_fill = "#050B0C",
	h_color = "#D3BCB0",
	# subplot
	s,
	s_x = 0.9, s_y = .91, 
	s_width = 1.4, 
	s_height = 1.3, 
	# flash
	# spotlight = TRUE, l_x = 1.5, l_y = 1.35, l_width = 1.5, l_height = 1.5, l_alpha = 0.9,
	# file 
	filename = "inst/figures/dark_hex_sticker.png")
