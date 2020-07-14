//
//  DetailDetailInteractor.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

class DetailInteractor: DetailInteractorInput {

    weak var output: DetailInteractorOutput!

    private var dataManager = NetworkManager()

    var hotel: Hotel? = nil
    var hotelDetails: HotelDetails? = nil

    func getData() -> HotelDetails {
        guard let hotel = hotel else {
            return HotelDetails(from: Hotel())
        }
        return hotelDetails ?? HotelDetails(from: hotel)
    }

    func loadData() {

    }
}
