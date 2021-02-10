#
# Working directoryは自分の環境にあわせて変更
setwd("")
#
# vioplotが無ければ，インストールして起動
if(!require(vioplot)){
  install.packages("vioplot")
  library("vioplot")
}
#
### データファイル
# Column  1: OLPbi / Overlap
# Column  2: OLPbt
# Column  3: OLPbrt
# Column  4: TBPbi / Baillie & Pilcher's t
# Column  5: THObi / Holstein's t
# Column  6: TBPbt
# Column  7: THObt
# Column  8: TBPbrt
# Column  9: THObrt
# Column 10: GLKbi / Gleichlaeufigkeit 
# Column 11: GLKbt
# Column 12: GLKbrt
# bi = between images
# bt = between trees
# brt = between reference and trees
#
### データファイル読み込み
stats <- read.csv("dating_stats.csv")
#
################################
# Violin plot (OLP)の計算と描画
################################
#
# データを変数に格納，欠測データNAの削除
olpbi <- stats[,1][!is.na(stats[,1])]
olpbt <- stats[,2][!is.na(stats[,2])]
olpbrt <- stats[,3][!is.na(stats[,3])]
#
# 前に何か描画があれば消去
plot.new()
# 軸の設定
# xlim: プロットしたいデータ数(n)に合わせて変更 2.5 > n.5
plot(0, 0, type = "n", xlab = "", ylab = "", axes = FALSE,
     xlim = c(0.5, 3.5),
     ylim = range(c(olpbi, olpbt, olpbrt)))
# at: データ数(n)に合わせて変更 2 > n
axis(side = 1, at = 1:3, labels = c("BI", "BT", "BRT"))
axis(side = 2)
#
# 計算とプロット
vioplot(olpbi, at = 1, col = "red", add = TRUE)
vioplot(olpbt, at = 2, col = "yellow", add = TRUE)
vioplot(olpbrt, at = 3, col = "green", add = TRUE)
#
################################
# Violin plot (TBP, THO)の計算と描画
################################
#
# データを変数に格納，欠測データNAの削除
tbpbi <- stats[,4][!is.na(stats[,4])]
thobi <- stats[,5][!is.na(stats[,5])]
tbpbt <- stats[,6][!is.na(stats[,6])]
thobt <- stats[,7][!is.na(stats[,7])]
tbpbrt <- stats[,8][!is.na(stats[,8])]
thobrt <- stats[,9][!is.na(stats[,9])]
#
# 前に何か描画があれば消去
plot.new()
# 軸の設定
# xlim: プロットしたいデータ数(n)に合わせて変更 2.5 > n.5
plot(0, 0, type = "n", xlab = "", ylab = "", axes = FALSE,
     xlim = c(0.5, 6.5),
     ylim = range(c(tbpbi, thobi, tbpbt, thobt, tbpbrt, thobrt)))
# at: データ数(n)に合わせて変更 2 > n
axis(side = 1, at = 1:6, labels = c("BI", "BI", "BT", "BT", "BRT", "BRT"))
axis(side = 2)
#
# 計算とプロット
vioplot(tbpbi, at = 1, col = "red", add = TRUE)
vioplot(thobi, at = 2, col = "yellow", add = TRUE)
vioplot(tbpbt, at = 3, col = "red", add = TRUE)
vioplot(thobt, at = 4, col = "yellow", add = TRUE)
vioplot(tbpbrt, at = 5, col = "red", add = TRUE)
vioplot(thobrt, at = 6, col = "yellow", add = TRUE)
#
################################
# Violin plot (GLK)の計算と描画
################################
#
# データを変数に格納，欠測データNAの削除
glkbi <- stats[,10][!is.na(stats[,10])]
glkbt <- stats[,11][!is.na(stats[,11])]
glkbrt <- stats[,12][!is.na(stats[,12])]
#
# 前に何か描画があれば消去
plot.new()
# 軸の設定
# xlim: プロットしたいデータ数(n)に合わせて変更 2.5 > n.5
plot(0, 0, type = "n", xlab = "", ylab = "", axes = FALSE,
     xlim = c(0.5, 3.5),
     ylim = range(c(0, 100)))
# at: データ数(n)に合わせて変更 2 > n
axis(side = 1, at = 1:3, labels = c("BI", "BT", "BRT"))
axis(side = 2)
#
vioplot(glkbi, at = 1, col = "red", add = TRUE)
vioplot(glkbt, at = 2, col = "yellow", add = TRUE)
vioplot(glkbrt, at = 3, col = "green", add = TRUE)

