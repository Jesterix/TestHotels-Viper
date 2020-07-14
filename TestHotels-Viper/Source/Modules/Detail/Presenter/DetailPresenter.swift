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
        view.updateView(with: prepareViewModel())
        interactor.loadData()
    }

    func prepareViewModel() -> DetailViewModel {
        let details = interactor.getData()
        return DetailViewModel(
            lat: "Lattitude: \(details.lat)",
            lon: "Longtitude: \(details.lon)",
            name: details.name,
            address: "Address: \(details.address)",
            stars: "⭐️: \(details.stars)",
            distance: "Distance from center: \(details.distance)",
            suitesAvailability: "Suites available: " + details.suitesAvailability.joined(separator: ", "))
    }

    func onDetailLoad() {
        view.updateView(with: prepareViewModel())
    }
}
