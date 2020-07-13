//
//  DetailDetailConfigurator.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import UIKit

class DetailModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? DetailViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: DetailViewController) {

        let router = DetailRouter()

        let presenter = DetailPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = DetailInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
