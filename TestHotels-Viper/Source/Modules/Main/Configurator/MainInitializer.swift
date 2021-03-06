//
//  MainMainInitializer.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import UIKit

class MainModuleInitializer {
    func buildDefault() -> UIViewController {
        let defaultViewController = MainViewController()
        let configurator = MainModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: defaultViewController)
        return UINavigationController(rootViewController: defaultViewController)
    }
}
