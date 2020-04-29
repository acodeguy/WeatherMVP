import UIKit

class WeatherViewController: UIViewController, WeatherView {
    
    var presenter: WeatherPresenter!
    let tempLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempLabel.text = "No Weather Data"
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        tempLabel.textColor = .white
        view.addSubview(tempLabel)
        
        NSLayoutConstraint.activate([
            tempLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            tempLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        presenter.showWeather()
    }
    
    func setWeather(weatherData: WeatherData) {
        guard let weather = weatherData.consolidated_weather.first else { return }
        
        DispatchQueue.main.async {
            let temp = round(weather.the_temp)
            self.tempLabel.text = "In \(weatherData.title), it is now \(temp)℃"
        }
    }
}
