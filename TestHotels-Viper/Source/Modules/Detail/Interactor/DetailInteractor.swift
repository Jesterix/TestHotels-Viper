//
//  DetailDetailInteractor.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//
import Foundation

class DetailInteractor: DetailInteractorInput {

    weak var output: DetailInteractorOutput!

    private var dataManager = NetworkManager()

    var hotel: Hotel? = nil
    var hotelDetails: HotelDetails? = nil
    private var error: Error? = nil

    func getData() -> HotelDetails {
        guard let hotel = hotel else {
            return HotelDetails(from: Hotel())
        }
        return hotelDetails ?? HotelDetails(from: hotel)
    }

    func loadData() {
        guard let hotel = hotel else {
            return
        }

        loadDetails(for: String(hotel.id)) { details in
            self.hotelDetails = details
            self.output.onDetailLoad()
        }
    }

    private func loadDetails(
        for id: String,
        completion: @escaping (HotelDetails) -> Void
    ) {
        dataManager.getHotelDetails(for: id) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let response):
                    completion(response)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
//
//      private func loadImage(
//        imageName: String,
//        completion: @escaping (UIImage) -> Void
//      ) {
//        networkManager.getHotelImage(imageName: imageName) { result in
//          DispatchQueue.main.async {
//            switch result {
//            case .success(let response):
//              completion(response)
//            case .failure(let error):
//              completion(UIImage())
//              print(error)
//            }
//          }
//        }
//      }

//      private func loadData() {
//        loadDetails(for: String(hotel.id)) { details in
//          self.hotelDetails = details

//          guard let name = details.imageName else {
//            self.hotelImage = UIImage()
//            self.updateView()
//            return
//          }
//
//          self.loadImage(imageName: name) { image in
//            self.hotelImage = image.imageWithoutBorder(width: 1) ?? image
//            self.updateView()
//          }
//        }
//      }
}
