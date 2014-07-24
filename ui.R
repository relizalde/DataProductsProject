library(shiny)

# UI for application
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Analysis of mtcars dataset"),
    
    # Sidebar 
    sidebarPanel(
        h3('Vehicle Specifications'),
        wellPanel(checkboxGroupInput("select", label = h4("Select the number of cylinders"), 
                              choices = list("4" = 4, "6" = 6, "8" = 8), selected = 4)),
        wellPanel(h4("Model Cars Analyzed"), tableOutput("resumenTbl"))
        
    ),
    
    # Plotting area 
    mainPanel(
        h3('Plot Area'),
        wellPanel(p('Total number of cars analyzed: '), textOutput('totalTxt')),
        wellPanel(plotOutput("carsPlot")),
        wellPanel(
            h3('About'),
            p("This app was created for the course project in the Developing Data Products class in Coursera. For more details you can check the ",
              a("README", 
                href = "https://github.com/relizalde/DataProductsProject/blob/master/README.md"), ' file.')
            
            
        ))
    ))