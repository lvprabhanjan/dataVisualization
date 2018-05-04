#-----------------------------------------------------------------------------#
#                                                                             #
# Authors: Siva and Prabhanjan                                                #
#                                                                             #
# Client: Mary Washington Healthcare Center                                   #
#                                                                             #
# Created Date: 2018-05-03                                                    #
#                                                                             #
#-----------------------------------------------------------------------------#
#intall packages
'
install.packages("devtools")
install.packages("shiny")
install.packages("readxl")
devtools::install_github("jeromefroe/circlepackeR")
install.packages("data.tree")
install.packages("jsonlite")
'

library(shiny)
library(readxl)
library(circlepackeR)
library(data.tree)
library(jsonlite)

#Reading the Excel File and inputing into the dataset called testdata#
testdata <- read_excel("dummy.xlsx", col_types = c("text", "text", "text", "text",  "text","text","numeric", "text", "numeric"))
# Changing the format. This uses the data.tree library. This library needs a column that looks like root/group/subgroup/..., so I build it #
testdata=data.frame(testdata)
testdata$pathString <- paste("world", testdata$group, testdata$subgroup, testdata$subsubgroup, sep = "/")
population <- as.Node(testdata)

testdata$text<-


ui <- fluidPage(
  htmlTemplate("www/index.html")
)

server <- function(input, output, session) {
  
}
shinyApp(ui, server)