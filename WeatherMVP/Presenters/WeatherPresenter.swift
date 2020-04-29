import UIKit

class WeatherPresenter: WeatherViewPresenter {
    
    unowned let view: WeatherView
    let weatherDataService: Serviceable
    
    func fetchWeather(completion: @escaping (Result<WeatherData, Error>) -> Void) {
        WeatherDataService.shared.fetchWeather { result in
            switch result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    required init(view: WeatherView, weatherDataService: Serviceable) {
        self.view = view
        self.weatherDataService = weatherDataService
    }
}
