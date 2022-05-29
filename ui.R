library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Diamond Price Calculator"),
    
    # Sidebar with options selectors
            sidebarLayout(
                     sidebarPanel(
                         helpText("This application helps predict diamond prices based on given specifications"),
                         h4(helpText("Please Specify The Characteristic Of Diamond Required By You")),
                         numericInput("car", label = h4("Carats"), step = 0.01, value = 1.5),
                         checkboxGroupInput("cut", label = h4("Cut"),
                                            choices = list("Unknown" = "*", "Fair" = "Fair", "Good" = "^Good",
                                                           "Very Good" = "Very Good", "Premium" = "Premium",
                                                           "Ideal" = "Ideal"),selected = "Fair"),
                         checkboxGroupInput("col", label = h4("Color"),
                                            choices = list("Unknown" = "*", "D" = "D", "E" = "E",
                                                           "F" = "F", "G" ="G",
                                                           "H" = "H", "I" = "I",
                                                           "J" = "J"), selected = "D"),
                         checkboxGroupInput("clar", label = h4("Clarity"),
                                            choices = list("Unknown" = "*", "I1" = "I1", "SI2" = "SI2",
                                                           "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1",
                                                           "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF" ),selected = "I1")
                     ),
                     
                     # Show a plot with diamonds and regression line
                     mainPanel(
                         plotOutput("distPlot"),
                         h4("Predicted value of this diamond is:"),
                         h3(textOutput("result"))
                     )
                 )
        )
        
)
    
