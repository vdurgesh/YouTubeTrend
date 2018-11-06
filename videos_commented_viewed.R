draw.video_commented_viewed <- function(df) { 
  df$views_in_millions <- df$views/1000000
  df$comments_in_hundred <- df$comment_count/100
  p <- qplot(views_in_millions,comments_in_hundred, data = df, geom = "point",color = "default")
  p <- p + xlab("Number of Views (in million)") 
  p <- p + ylab("Number. Of Comments (in hundreds)") 
  p <- p + ggtitle("YouTube Videos commented and viewed")
  p
}