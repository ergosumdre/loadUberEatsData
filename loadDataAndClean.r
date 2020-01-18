loadAllCSV <- function(){
  dir = list.files(pattern="*.csv")
  df <- do.call(rbind.fill,lapply(dir,read.csv))
  df[,7] <- as.numeric(gsub("[\\$,]", "", df[,7]))
  df[,8]<- as.numeric(gsub("[\\$,]", "", df[,8]))
  df[,9] <- as.numeric(gsub("[\\$,]", "", df[,9]))
  df[,10] <- as.numeric(gsub("[\\$,]", "", df[,10]))
  df[,11] <- as.numeric(gsub("[\\$,]", "", df[,11]))
  df[,12] <- as.numeric(gsub("[\\$,]", "", df[,12]))
  df[,13] <- as.numeric(gsub("[\\$,]", "", df[,13]))
  df[,14] <- as.numeric(gsub("[\\$,]", "", df[,14]))
  df[,8][is.na(df[,8])] <- 0
  df[,9][is.na(df[,9])] <- 0
  df[,10][is.na(df[,10])] <- 0
  df[,11][is.na(df[,11])] <- 0
  df[,12][is.na(df[,12])] <- 0
  df[,13][is.na(df[,13])] <- 0
  df[,14][is.na(df[,14])] <- 0
  df
}
