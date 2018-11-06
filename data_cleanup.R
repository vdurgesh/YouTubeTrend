#Data Cleanup script
cleanUp <- function(df) {
  df$description <- NULL
  df$thumbnail_link <- NULL
  df$video_error_or_removed <- as.factor(df$video_error_or_removed)
  #df$trending_date <- as.Date(df$trending_date, "%y.%d.%m")
  #head(df)
  #data set by years
  df$trending_date <- as.Date(df$trending_date, format="%y.%d.%m")
  df$year <- format(df$trending_date,"%Y")
  df$month <- format(df$trending_date,"%m-%Y")
  head(df$month)
  df
}