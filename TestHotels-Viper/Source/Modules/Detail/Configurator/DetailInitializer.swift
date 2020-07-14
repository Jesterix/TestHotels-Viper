//
//  DetailDetailInitializer.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import UIKit

class DetailModuleInitializer: NSObject {
    func buildDetail(with hotel: Hotel) -> UIViewController {
        let detailViewController = DetailViewController()
        let configurator = DetailModuleConfigurator()
        configurator.configureModuleForViewInput(
            viewInput: detailViewController,
            data: hotel)
        return detailViewController
    }
}
