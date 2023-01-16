##インストール
pack <- c("rvest", "quantmod", "magrittr", "purrr", "tidyr", "ggplot2", "binancer", "rtweet", "lubridate", "TTR", "classInt")
install.packages(pack[!(pack %in% unique(rownames(installed.packages())))],
                 repos="https://cloud.r-project.org")

#ロード
for(n in 1:length(pack)){ p <- paste0("library(", pack[n], ")"); eval(parse(text = p)) }

#通貨ペアの取得
BCOINS <- binance_symbols()[grepl("USDT$", binance_symbols())]
BCOINS <- BCOINS[!grepl("UPUSDT$", BCOINS)]
BCOINS <- BCOINS[!grepl("DOWNUSDT$", BCOINS)]

#作成した関数のロード from Gist
source("https://gist.githubusercontent.com/kumeS/1df358e5301847b0a8197f903f8c8b40/raw/c0a87a540e906051d36c3745acd6359f348d499d/CoinPick_v01.R")

#ファイル名の定義 & USDTペアシンボルの選択
Filename <- "Coinplot_1.png"
Symbols <- BCOINS[1:50]
Term <- 60

#実行
CoinPick_v01(Filename=Filename, Symbols=Symbols, Hjust=5, Term=Term)

#ファイル名の定義 & USDTペアシンボルの選択
Filename <- "Coinplot_2.png"
Symbols <- BCOINS[51:100]

#実行
CoinPick_v01(Filename=Filename, Symbols=Symbols, Hjust=4.05, Term=Term)

#ファイル名の定義 & USDTペアシンボルの選択
Filename <- "Coinplot_3.png"
Symbols <- BCOINS[101:150]



#実行
CoinPick_v01(Filename=Filename, Symbols=Symbols, Hjust=4.7, Term=Term)

#ファイル名の定義 & USDTペアシンボルの選択
Filename <- "Coinplot_4.png"
Symbols <- BCOINS[151:200]

#実行
CoinPick_v01(Filename=Filename, Symbols=Symbols, Hjust=5.5, Term=Term)

#ファイル名の定義 & USDTペアシンボルの選択
Filename <- "Coinplot_5.png"
Symbols <- BCOINS[201:250]

#実行
CoinPick_v01(Filename=Filename, Symbols=Symbols, Hjust=5.7, Term=Term)

#ファイル名の定義 & USDTペアシンボルの選択
Filename <- "Coinplot_6.png"
Symbols <- BCOINS[251:300]

#実行
CoinPick_v01(Filename=Filename, Symbols=Symbols, Hjust=7.4, Term=Term)

#ファイル名の定義 & USDTペアシンボルの選択
Filename <- "Coinplot_7.png"
Symbols <- BCOINS[300:length(BCOINS)]

#実行
CoinPick_v01(Filename=Filename, Symbols=Symbols, Hjust=2.2, Term=Term)

#system(paste0("montage -tile 3x3 -geometry 100% Coinplot_*.png CoinPlot_", lubridate::today(), ".png"))
#system("rm -rf Coinplot_*.png")


#諸設定
#Filename <- "CoinPlot_1.png"
#txt <- "バイナンス仮想通貨の上昇傾向銘柄をつぶやく。"
#Alt <- "#仮想通貨"

#投稿
#rtweet::post_tweet(status = txt,
#                  media_alt_text = Alt,
#                   media = Filename)

