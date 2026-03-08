

#library(webr)
#library(stringi)
#library(stringr)
#library(ggthemes)
#library(plyr)
#library(readxl)
#library(openxlsx)
#library(data.table)
library(shiny)
library(shinydashboard)
#library(shinyAce)
#source("chooser.R")
#library(shinyscreenshot)
#library(scales)
#library(lavaan)

#library(mnormt)
#library(curl)
#library(plspm)
#library(ggplot2)

########################################
########UI (User Interface)#############
########################################

modul_dashboard_ui <- function(id) {
  
  
  
  ns <- NS(id)
  

  fluidPage(
    
    
    
    
    dashboardPage(
      
      
      
      dashboardHeader(title = "Basic dashboard"),
      
      
      dashboardSidebar(),
      
      
      
      dashboardBody(
        
        
        
        # Boxes need to be put in a row (or column)
        fluidRow(
          
          
          box(
            
            plotOutput(ns("plot1"), height = 250)
              
              ), #akhir box
          
          
          
          
          box(
            title = "Controls",
            sliderInput(ns("slider"), "Number of observations:", 1, 100, 50)
          )
        ) #akhir box
        
        
        
        
        
      ) #akhir dashboardBody
      
      
      
      
      
      
      
    ), #Akhir dashboardpage
    
    
    
    
    br()
    
  ) #Akhir dari fluidpage
    
    
    
    
    
    
    
    
    

  
  
} #Akhir dari modul_dashboard_ui

#Akhir dari modul_dashboard_ui
#Akhir dari modul_dashboard_ui
#Akhir dari modul_dashboard_ui
#Akhir dari modul_dashboard_ui











































































########################################
################Server##################
########################################



modul_dashboard_server <- function(input, output, session) {
  
  
  
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
  
  
  
  
} #akhir dari modul_dashboard_server

#akhir dari modul_dashboard_server
#akhir dari modul_dashboard_server
#akhir dari modul_dashboard_server

















































































ui <- fluidPage(
  
  
 # includeHTML("intro_home.html"),
  
  
  uiOutput("modul_dashboard"),
  
  
  br()
  
) #Akhir dari UI











server <- function(input, output) {
  
  
  
  
  
  output$modul_dashboard <- renderUI({
    
    
    
    #source("module//modul_dashboard.R")
    callModule(module = modul_dashboard_server, id = "modul_dashboard")
    modul_dashboard_ui(id = "modul_dashboard")
    
    
    
  })
  
  
  
  
  
  
  
  
  
  
  
} #Akhir dari server










shinyApp(ui, server)














