//
//  AppDelegate.swift
//  TestHotels-Viper
//
//  Created by Georgy Khaydenko on 12.07.2020.
//  Copyright © 2020 Georgy Khaydenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        if #available(iOS 13, *) {
        } else {
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.rootViewController = MainModuleInitializer().buildDefault()
            window?.makeKeyAndVisible()
        }

        return true
    }

    // MARK: UISceneSession Lifecycle
@available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
@available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}
