//
//  MainMainRouter.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//
import UIKit

class MainRouter: MainRouterInput {
    weak var view: UIViewController!
    
    func pushToDetailView(for hotel: Hotel) {
        let detailViewController = UIViewController()
        
        view.navigationController?.pushViewController(
            detailViewController,
            animated: true)
    }
}
