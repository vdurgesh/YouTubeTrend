draw.video_liked_viewed <- function(df) { 
  df$views_in_millions <- df$views/1000000
  df$likes_in_millions <- df$likes/1000000
  p <- qplot(views_in_millions,likes_in_millions, data = df, geom = "point",color = "default")
  p <- p + xlab("Number of Views") 
  p <- p + ylab("Number. Of Likes") 
  p <- p + ggtitle("YouTube Videos liked and viewed")
  p
}