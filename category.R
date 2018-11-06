library(ggplot2)
library("rjson")

appendCategory <- function(df) {
  categories <- fromJSON(file="US_category_id.json")
  category_id <- c()
  category_name <- c()
  for(category in categories[[3]]) {
    category_id <- c(category_id, category$id)
    category_name <- c(category_name, category$snippet$title)
  }
  categories_df <- data.frame(category_id, category_name)
  df<- merge(df, categories_df, by.x = "category_id", by.y = "category_id")
  df
}

category.plot <- function(df) {
  df <- appendCategory(df)
  p7 <- qplot(category_name, data = df, geom = "bar")
  p7 <- p7 + xlab("Category") 
  p7 <- p7 + ylab("No. Of Videos") 
  p7 <- p7 + ggtitle("YouTube Videos By Category")
  p7 <- p7 + theme(axis.text.x=element_text(angle=90, hjust=1))
  p7
}





