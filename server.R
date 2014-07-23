library(shiny)
library(datasets)
library(ggplot2)

shinyServer(function(input, output) {

    output$carsPlot <- renderPlot({
        # If missing input, return to avoid error later in function
        if(is.null(input$select))
            return()
                
        tbl <- mtcars[mtcars$cyl %in% input$select,c(1,2,9)]
        # create factors with value labels 
        tbl$am <- factor(tbl$am,levels=c(0,1),
                            labels=c("Automatic","Manual")) 
        tbl$cyl <- factor(tbl$cyl,levels=c(4,6,8),
                             labels=c("4cyl","6cyl","8cyl")) 
        
        
        qplot(cyl, mpg, data = tbl, geom = c("boxplot","jitter"), fill=cyl, 
              main = "Mileage by Cylinder number", xlab="", ylab="Miles per Gallon", facets= .~ am)
    })
    
    output$totalTxt <- renderText({
        x <- row.names(mtcars[mtcars$cyl %in% input$select,])
        
        length(x)
        })
    
    output$resumenTbl <- renderTable({
        # If missing input, return to avoid error later in function
        if(is.null(input$select))
            return()
        
        tbl <- mtcars[mtcars$cyl %in% input$select,c(1,2,9)]
        tbl
        
    })
})