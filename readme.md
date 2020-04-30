# WeeatherMVP
### A weather app built using the MVP design pattern

## Background
I wanted to learn to use the Model-View-Presenter design pattern, so I've built this simple weather app that pulls data from the Meta Weather API.

## The Model-View-Presenter Design Pattern
Models work just as with MVC, no real changes there. They continue to hold the application's data.

In MVP, views are passive; the view controller is now only responsible for its own lifecycle events; it forwards interactions to the Presenter, the Presenter sends back updates to the view.

Using MVP means that the view is now completely de-coupled from the controller (Presenter in this design pattern) and a lot easier to write tests for.

### Model <-|-> Presenter <-|-> View

## Tests
Still to come.