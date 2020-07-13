//
//  MainMainInteractorInput.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import Foundation

protocol MainInteractorInput {
    func loadData()
    func getData() -> [Hotel]
    func sortDataBy(parameter: Sorting)
}
