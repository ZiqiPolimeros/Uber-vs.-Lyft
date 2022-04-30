#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

FHV_ride <- fread("./FHV_ride.csv")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("NYC For-Hire Vehicle Data"),

    # Sidebar  
    sidebarLayout(
        sidebarPanel = sidebarPanel(
            selectizeInput(inputId = "X_var", 
                           label = "X-axis variable",  
                           choices = names(FHV_ride)[c(-4,-5,-6)]),
            selectizeInput(inputId = "Y_var", 
                           label = "Y-axis variable",  
                           choices = names(FHV_ride)[c(-8,-9)]),
            selectizeInput(inputId = "cat_colour", 
                           label = "Select Categorical variable",  
                           choices = names(FHV_ride)[c(-11,-12)]),

            
        ),

        # Show a plot 
        mainPanel(
            plotOutput("plot", dblclick = "plot_reset")
        )
    )
)

# Define server 
server <- function(input, output) {

    remaining <- reactive({
        names(FHV_ride)[c(-4,-5,-6, -match(input$y_varb,names(FHV_ride)))]
    })
    
    observeEvent(remaining(),{
        choices <- remaining()
        updateSelectInput(session = getDefaultReactiveDomain(),inputId = "X_varb", choices = choices)
    })
    
    output$plot <- renderPlot({
        ggplot(FHV_ride, aes_string(input$x_varb, input$y_varb))+
            geom_col(aes_string(colour=input$cat_colour),fill =input$cat_colour)+
            scale_y_continuous(labels = format_format(big.mark = " ", 
                                                      decimal.mark = ",", 
                                                      scientific = FALSE))
    })

}

# Run the application 
shinyApp(ui = ui, server = server)
