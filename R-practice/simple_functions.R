

convert_currency <- function(x){
  without_dollar <- sub("$", "", x, fixed = T)
  return (as.numeric(gsub(",", "", without_dollar)))
}


remove_comma <- function(x){
  return (as.numeric(gsub(",", "", x)))
}


date_correction <- function(date1, date2) {
  for (i in c(1:length(date1))){
    if(is.na(date1[i]) | is.na(date2[i])) next
    ifelse(date2[i] < date1[i], date2[i] <- date2[i] + 365, next)
  }
  return (date2)
}


rename_movie_headers <- function(my_data_frame) {
  names(my_data_frame)[c(2,5,6,7)] <- c("Movie.Title", "Theaters.Total", "Opening.Gross", "Theaters.Opening")
  return (my_data_frame)
}


format_for_model <- function(my_data_frame) {
  new_df <- rename_movie_headers(my_data_frame)
  new_df$Total.Gross <- convert_currency(new_df$Total.Gross)
  new_df$Opening.Gross <- convert_currency(new_df$Opening.Gross)
  new_df$Theaters.Total <- remove_comma(new_df$Theaters.Total)
  new_df$Theaters.Opening <- remove_comma(new_df$Theaters.Opening)
  new_df$Open <- as.Date(as.character(my_data_frame$Open), "%m/%d")
  new_df$Close <- as.Date(as.character(my_data_frame$Close), "%m/%d")
  new_df$Close <- date_correction(new_df$Open, new_df$Close)
  new_df$duration <- difftime(new_df$Close, new_df$Open, units = "days")
  return (new_df)
}


