library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
        # Application title
        titlePanel("Diamond Price prediction"),
        br(),
        br(),
        sidebarLayout(
            sidebarPanel(
                p(strong("About")),
                p("This tiny application helps to estimate the price of diamond based on the size in carats"),
                p("The price is given in 3 currencies"),
                p("The price - in SG dollar - is calculated on the basis of a linear model built upon the dataframe",
                code('Dimaond'), "from the library", code('UsingR')),
                code('fit <- lm(price ~ I(carat - mean(carat)), data = diamond)'),
                br(),
                br(),
                p("The price is SG Dollar is afterward converted to US Dollar (",code('*0.71'), ") and to Euro (",code('*0.65')," )")
            ),
            
            mainPanel(
                numericInput('carat', 'Enter the size of diamond in carats', 0.25, min = 0.05, max = 0.50, step = 0.01),
                submitButton('Submit'),
                br(),
                h4('Estimated Prices'),
                #h4('You entered'),
                #verbatimTextOutput("inputValue"),
                h5('In Singapore Dollar '),
                verbatimTextOutput("priceSG"),
                h5('In US Dollar '),
                verbatimTextOutput("priceUS"),
                h5('In Euro '),
                verbatimTextOutput("priceEU")
            )
        )
    )
)