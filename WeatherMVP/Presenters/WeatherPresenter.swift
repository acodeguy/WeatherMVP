import UIKit

class WeatherPresenter: WeatherViewPresenter {
    
    unowned let view: WeatherView
    let weatherDataService: Serviceable
    
    required init(view: WeatherView, weatherDataService: Serviceable) {
        self.view = view
        self.weatherDataService = weatherDataService
    }
        
    func showWeather() {
        WeatherDataService.shared.fetchWeather { result in
            switch result {
            case .success(let data):
                self.view.setWeather(weatherData: data)
            case .failure(let error):
                print(error)
            }
        }
    }
}
