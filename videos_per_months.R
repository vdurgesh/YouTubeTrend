library(ggplot2)
draw.video_per_months <- function(df) {
  p <- qplot(month, data = df, geom = "bar", color = I("black"),
             fill = I("orange"), alpha = I(0.5))
  p <- p + xlab("Months") 
  p <- p + ylab("No. Of Videos") 
  p <- p + ggtitle("YouTube Videos per Month")
  p
}