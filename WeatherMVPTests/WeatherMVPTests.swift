import XCTest
@testable import WeatherMVP

class WeatherMVPTests: XCTestCase {
    
    func testWeatherDataServiceReturnsALocationTitle() {
        WeatherDataServiceStub.shared.fetchWeather { result in
            switch result {
            case .success(let data):
                XCTAssertEqual(data.title, "Rome")
            default:
                XCTFail()
                break
                
            }
        }
    }
    
    func testWeatherDataServiceReturnsAnArrayOfWeatherObjects() {
        WeatherDataServiceStub.shared.fetchWeather { result in
            switch result {
            case .success(let data):
                XCTAssertTrue(type(of: data.consolidated_weather) == [Weather].self)
            default:
                XCTFail()
                break
               
           }
       }
    }
}
