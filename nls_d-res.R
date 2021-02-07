#
##################################################################
# Micro 60 mm
#####
rm(list = ls(all.names=TRUE))
dat <- read.csv("d-res_60mm.csv", header = TRUE)
#
distance <- dat$d
resolution <- dat$res
pixel_width <- dat$pw
#
fit_res <- nls(resolution~a/(distance+b)+c,
               start=c(a=275850,b=2.189,c=213.9), trace = TRUE)
summary(fit_res)
#
fit_pw <- nls(pixel_width~a*distance+b,
              start=c(a=1,b=1), trace = TRUE)
summary(fit_pw)
plot.new()
plot(
  distance, resolution,
  ylab = "",
  xlab = "",
  col="blue",
  axes = FALSE
  )
lines(distance, fitted(fit_res), lty=1)
axis(1)
axis(2)
#
par(new = TRUE)
plot(
  distance, pixel_width,
  ylab = "",
  xlab = "",
  col="red",
  axes = FALSE
)
lines(distance, fitted(fit_pw))
axis(4)
##################################################################
# Micro 85 mm
###
rm(list = ls(all.names=TRUE))
dat <- read.csv("d-res_85mm.csv", header = TRUE)
#
distance <- dat$d
resolution <- dat$res
pixel_width <- dat$pw
#
fit_res <- nls(resolution~a/(distance+b)+c,
               start=c(a=381283.41,b=-70.47,c=222.24), trace = TRUE)
summary(fit_res)
#
fit_pw <- nls(pixel_width~a*distance+b,
              start=c(a=1,b=1), trace = TRUE)
summary(fit_pw)
#
plot.new()
plot(
  distance, resolution,
  ylab = "",
  xlab = "",
  col="blue",
  axes = FALSE
)
lines(distance, fitted(fit_res), lty=1)
axis(1)
axis(2)
#
par(new = TRUE)
plot(
  distance, pixel_width,
  ylab = "",
  xlab = "",
  col="red",
  axes = FALSE
)
lines(distance, fitted(fit_pw))
axis(4)
##################################################################
# Micro 105 mm
###
rm(list = ls(all.names=TRUE))
dat <- read.csv("d-res_105mm.csv", header = TRUE)
#
distance <- dat$d
resolution <- dat$res
pixel_width <- dat$pw
#
fit_res <- nls(resolution~a/(distance+b)+c,
               start=c(a=486838.037,b=-63.660,c=120.851), trace = TRUE)
summary(fit_res)
#
fit_pw <- nls(pixel_width~a*distance+b,
              start=c(a=1,b=1), trace = TRUE)
summary(fit_pw)
#
plot.new()
plot(
  distance, resolution,
  ylab = "",
  xlab = "",
  col="blue",
  axes = FALSE
)
lines(distance, fitted(fit_res), lty=1)
axis(1)
axis(2)
#
par(new = TRUE)
plot(
  distance, pixel_width,
  ylab = "",
  xlab = "",
  col="red",
  axes = FALSE
)
lines(distance, fitted(fit_pw))
axis(4)
# EOF

