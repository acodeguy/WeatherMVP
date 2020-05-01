# WeeatherMVP
### A weather app built using the MVP design pattern

## Background
I wanted to learn to use the Model-View-Presenter design pattern, so I've built this simple weather app that pulls data from the Meta Weather API.

## The Model-View-Presenter Design Pattern
Models work just as with MVC, no real changes there. They continue to hold the application's data.

In MVP, views are passive; the view controller is now only responsible for its own lifecycle events; it forwards interactions to the Presenter, the Presenter sends back updates to the view.

![Model-View-Presenter layers](https://upload.wikimedia.org/wikipedia/commons/d/dc/Model_View_Presenter_GUI_Design_Pattern.png)

Each concern (Model, View or Presenter) conforms to a protocol that dictates their minimum behaviour. Designing to an interface rather than a concrete implenentation de-couples code, making testing a lot easier. 

### Model <-|-> Presenter <-|-> View

## Tests
Test doubles are easier to create when each concern conforms to a protocol; just make the test subject's dependencies conform to the same protocol as their real-world counterpart, then stub, fake, mock the necessary parts of it.

Test doubles used:

- `WeatherDataServiceStub`: this returns a fixed sample response from the API
- `WeatherViewSpy`: spies on wether the View's UI methods were called or not by the Presenter.

Tests can be run by opening Xcode and pressing `Cmd + U`.
