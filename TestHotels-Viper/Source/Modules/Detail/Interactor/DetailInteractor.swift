//
//  DetailDetailInteractor.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

class DetailInteractor: DetailInteractorInput {

    weak var output: DetailInteractorOutput!

    var hotel: Hotel? = nil
    var hotelDetails: HotelDetails? = nil
    let noDataText = "no data"

    func getData() -> HotelDetails {
        
    }

    func loadData() {

    }
}
