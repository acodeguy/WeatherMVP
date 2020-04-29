import Foundation

protocol WeatherViewPresenter {
    init(view: WeatherView, weatherDataService: Serviceable)
    func showWeather()
}
