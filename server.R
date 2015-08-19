library(shiny)
library(UsingR)
data(diamond)

fit <- lm(price ~ I(carat - mean(carat)), data = diamond)

shinyServer(
    
    function(input, output) {
        priceSG <- reactive(coef(fit)[1] + coef(fit)[2] * input$carat)
        output$inputValue <- renderText({input$carat})
        output$priceSG <- renderText({priceSG()})
        output$priceUS <- renderText({priceSG()*0.71})
        output$priceEU <- renderText({priceSG()*0.65})
    }
)
