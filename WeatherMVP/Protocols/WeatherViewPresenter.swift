import Foundation

protocol WeatherViewPresenter {
    init(view: WeatherView, weatherDataService: Serviceable)
    func fetchWeather(completion: @escaping (Result<WeatherData, Error>) -> Void)
}
