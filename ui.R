library(shiny)
library(rgl)
library(shinyRGL)

shinyUI(fluidPage(
  titlePanel("Gradientes de selección lineal"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("b1", label = "beta 1", min=-2, max=2, value = 0, step = 0.1),
      sliderInput("b2", label = "beta 2", min=-2, max=2, value = 0, step = 0.1), 
      sliderInput("b3", label = "beta 3", min=-2, max=2, value = 0, step = 0.1),  
      width=3),
    
    mainPanel(
      webGLOutput("pob1"), width=7)
     )
   )
)