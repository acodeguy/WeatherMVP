import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let windowScene = (scene as? UIWindowScene) {
            
            let service = WeatherDataService()
            let view = WeatherViewController()
            let presenter = WeatherPresenter(view: view, weatherDataService: service)
            view.presenter = presenter
        
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = view
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
