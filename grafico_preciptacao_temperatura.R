require(grDevices) # for colours
#require(ggplot2)
#Ler Dados na planilha csv
clima_data <- read.table("clima.csv", head=T, sep=";", dec=",")
# Load ggplot2
library(ggplot2)

png(filename = paste0("clima", "_", "jardim_2013", ".png"), units = "in", width=12, height=6, res = 300)

par(mar=c(4,6,4,6), cex = 1.0)
# Basic Barplot
my_bar <- barplot(clima_data[1:12 , 8],  border=F , names.arg=clima_data[1:12 , 1],col = "blue",ylim = c(0,100),
                  main="", ylab = "", xlab = "",  space = 1)
axis(side=2, col.axis="blue")
par(new=TRUE)
plot(clima_data[1:12 , 2], clima_data[1:12 , 7], type = "l", lty = 1, col = 2, lwd = 2, ylab = "", xaxt = "n", yaxt = "n",  xlab = "") 

axis(side=4, col.axis="red")
par(las = 0)
mtext("Temperatura (°C)", side = 4, line = 3, cex = 1.5, col = "red")
mtext("Precipitação (mm)", side = 2, line = 3, cex = 1.5, col = "blue" )
mtext("Mês", side = 1, line = 3, cex = 1.5)
#legend("topleft", c("Precipitação", "Temperatura"),
#       col = c("blue", "red"), lty = c(1, 1), lwd = c(5, 2), cex = 1.1)

dev.off ()