#Importing required libraries
library(shiny)
library(shinyjs)
library(shinythemes)
library(tidyverse)
library(arules)
library(stats)
library(factoextra)
library(C50)


#Subsetting mandatory fields
fieldsMandatory <- c("Gender", "Customer.Type", "Age", "Type.of.Travel", "Class", "Flight.Distance", "Inflight.wifi.service", 
                     "Departure.Arrival.time.convenient", "Ease.of.Online.booking", "Gate.location", "Food.and.drink", 
                     "Online.boarding", "Seat.comfort", "Inflight.entertainment", "On.board.service", "Leg.room.service",
                     "Baggage.handling", "Checkin.service", "Inflight.service", "Cleanliness", 
                     "Departure.Delay.in.Minutes", "Arrival.Delay.in.Minutes")

#Creating label function for mandatory fields
labelMandatory <- function(label) {
  tagList(
    label,
    span("*", class = "mandatory_star")
  )
}

#Add a red asterisk to an input label
appCSS <- ".mandatory_star { color: red; }"

port <- Sys.getenv('PORT')

shiny::runApp(
  appDir = getwd(),
  host = '0.0.0.0',
  port = as.numeric(port)
)
