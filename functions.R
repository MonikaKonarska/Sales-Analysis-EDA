
describe_variables <- function(data) {
  #Args:
  #data: data frame object
  
  if (! is.data.frame(data)) {
    stop("Object data is not a data frame.")
  }
  
  cols <- dim(data)[2]
  rows <- dim(data)[1]
  describeTable <- data.frame(variable = matrix( nrow = cols))
  
  for (var in seq_along(names(data))) {
    
    var_name <- names(data[var])
    describeTable[var, "variable"]       <- var_name
    describeTable[var, "type"]           <- class(data[[var]])
    describeTable[var, "numberOfNa"]     <- sum(is.na(data[[var]]))
    describeTable[var, "p_numberOfNa"]   <- describeTable[var, "numberOfNa"]/ rows
    describeTable[var, "uniqueValues"]   <- length(unique(data[[var]]))
    describeTable[var, "p_uniqueValues"] <- describeTable[var,"uniqueValues"]/rows
    describeTable[var, "zeros"]          <- sum(data[[var]] == 0 )
    describeTable[var, "p_zeros"]        <- ifelse(!is.na(describeTable[var, "zeros"]),
                                                   describeTable[var, "zeros"]/ rows,
                                                   describeTable[var, "zeros"])
  }
  
  return(describeTable)
}


visualizeSpineplots <- function(variableX, variableY, dataFrame, pathTosavePlots = NULL) {
  # Creates spineplots 
  #
  # Args:
  # variableX: name of variable on X axis spineplot
  # variableY: name of variable on Y axis spineplot
  # dataFrame: data frame object
  library(dplyr)
  dataToVisualize <- dataFrame %>% select(c(variableY, variableX)) 
  for (var in c(variableX, variableY)) {
    if(!is.factor(dataToVisualize[[var]])) {
      
      dataToVisualize[[var]] <- factor(dataToVisualize[[var]])
    }
  }
  colors<-grDevices::colors() 
  numberColorsInPlot <- length(levels(dataToVisualize[[variableY]]))
  spineplot(dataToVisualize[[variableY]] ~ dataToVisualize[[variableX]],
                    main = paste("Prefered", variableX,"by", variableY, "Customer"),
                    col  = sample(colors, numberColorsInPlot),
                    xlab = variableX,
                    ylab = variableY )
}
