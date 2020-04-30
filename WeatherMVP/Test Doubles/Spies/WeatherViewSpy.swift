import Foundation

class WeatherViewSpy: WeatherView {
    var presenter: WeatherPresenter!
    var setWeatherCalled: Bool = false
    
    func setWeather(weatherData: WeatherData) {
        setWeatherCalled = true
    }
}
