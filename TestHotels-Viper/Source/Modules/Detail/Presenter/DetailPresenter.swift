//
//  DetailDetailPresenter.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

class DetailPresenter: DetailModuleInput, DetailViewOutput, DetailInteractorOutput {

    weak var view: DetailViewInput!
    var interactor: DetailInteractorInput!
    var router: DetailRouterInput!

    func viewIsReady() {

    }
}
