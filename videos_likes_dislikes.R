library(ggplot2)
draw.video_likes_dislike <- function(df) {
  df$likes_vs_dislikes <- as.factor(df$likes > df$dislikes)
  p <- qplot(views, data = df, geom = "density", log = "x", fill = likes_vs_dislikes,
            alpha = I(0.5))
  p
}