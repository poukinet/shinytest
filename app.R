#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#

library(shiny)
library(readr)
library(dplyr)
library(ggplot2)

# Define UI for application
ui <- fluidPage(

    # Application title
    titlePanel("Brand Personality Profile"),

    sidebarLayout(
        # Sidebar with a drop-down menu to select a brand
        sidebarPanel(
            shiny::uiOutput("selectionUI")
        ),

        # Personality plot in the main panel
        mainPanel(
            shiny::plotOutput("personalityPlot")
        )
    )
)

# Define server logic required to process the data and draw the plot
server <- function(input, output) {

    # Load data
    data <- readr::read_csv("data/app_data.csv")

    # Prepare dynamic drop-down menu
    output$selectionUI <- renderUI({
        brands <- data$BrandName
        shiny::selectInput("selectedBrand",
                           label = "Brand",
                           choices = brands)
    })


    selected_data <- reactive({
        req(input$selectedBrand)

        data %>%
            filter(BrandName %in% !! input$selectedBrand)
    })

    # Prepare a basic personality plot
    output$personalityPlot <- renderPlot({

        plot_data <- selected_data() %>%
            tidyr::pivot_longer(Bold:Warm,
                                names_to = "Attribute",
                                values_to = "Score")

        ggplot(plot_data) +
            geom_col(aes(x = Attribute, y = Score))

    })
}

# Run the application
shinyApp(ui = ui, server = server)
