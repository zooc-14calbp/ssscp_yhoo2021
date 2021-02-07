getwd()
#
micro060 <- read.csv("d-res_60mm.csv", header = TRUE)
#
distance <- micro060$d
resolution <- micro060$res
pixel_width <- micro060$pw
#
fit_res <- nls(resolution~a/distance+b,
               start=c(a=1,b=1), trace = TRUE)
summary(fit_res)
#
fit_pw <- nls(pixel_width~a*distance+b,
              start=c(a=1,b=1), trace = TRUE)
summary(fit_pw)
#
plot(
  distance, resolution,
  ylab = "",
  xlab = "",
  col="blue",
  axes = FALSE
  )
lines(distance, fitted(fit_res), lty=1)
axis(1)
axies(2)
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
