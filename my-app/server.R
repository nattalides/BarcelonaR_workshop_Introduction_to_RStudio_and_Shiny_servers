library(shiny)

# Define server logic and R code
server <- function(input, output) {
  
  output$text_output <- renderText({
    # Display text input
    paste("You typed:", input$text_input)
  })
}
