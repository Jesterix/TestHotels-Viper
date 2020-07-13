//
//  MainMainPresenter.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import Foundation

class MainPresenter: MainModuleInput, MainViewOutput, MainInteractorOutput {

    weak var view: MainViewInput!
    var interactor: MainInteractorInput!
    var router: MainRouterInput!

    func viewIsReady() {
        view.setupInitialState()
        interactor.loadData()
    }
    
    func numberOfRowsInSection() -> Int {
        interactor.getData().count
    }
    
    func dataForRowAt(indexPath: IndexPath) -> Hotel {
        interactor.getData()[indexPath.row]
    }
    
    func sortDataBy(parameter: Sorting) {
        interactor.sortDataBy(parameter: parameter)
    }
    
    func reloadData() {
        view.reloadData()
    }
}
