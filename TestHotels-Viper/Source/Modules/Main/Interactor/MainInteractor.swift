//
//  MainMainInteractor.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

class MainInteractor: MainInteractorInput {
    
    weak var output: MainInteractorOutput!
    
    private var hotels: [Hotel] = []
    private var error: Error? = nil
    private var dataManager = NetworkManager()
    
    func loadData() {
        dataManager.getHotelListData { result in
            switch result {
            case .success(let hotels):
                self.hotels = hotels
                self.output.reloadData()
            case .failure(let error):
                self.error = error
            }
        }
    }
    
    func getData() -> [Hotel] {
        hotels
    }
    
    func sortDataBy(parameter: Sorting) {
        switch parameter {
        case .availability:
            hotels.sort { $0.suitesAvailability.count < $1.suitesAvailability.count }
        case .distance:
            hotels.sort { $0.distance < $1.distance }
        }
    }
}
