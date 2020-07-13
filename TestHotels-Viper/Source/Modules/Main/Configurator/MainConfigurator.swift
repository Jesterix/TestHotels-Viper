//
//  MainMainConfigurator.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import UIKit

class MainModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? MainViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: MainViewController) {

        let router = MainRouter()
        router.view = viewController

        let presenter = MainPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = MainInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
