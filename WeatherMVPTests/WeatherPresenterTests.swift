import XCTest
@testable import WeatherMVP

class WeatherPresenterTests: XCTestCase {
        
    func testShouldCallSetWeatherOnView() {
        let weatherDataServiceStub = WeatherDataServiceStub()
        let weatherViewSpy = WeatherViewSpy()
        let presenter = WeatherPresenter(view: weatherViewSpy, weatherDataService: weatherDataServiceStub)
        weatherViewSpy.presenter = presenter
        
        presenter.showWeather()
        
        XCTAssertTrue(weatherViewSpy.setWeatherCalled, "setWeatherCalled is false")
    }
}
