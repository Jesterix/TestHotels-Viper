//
//  MainMainViewOutput.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import Foundation

protocol MainViewOutput {
    func viewIsReady()
    func numberOfRowsInSection() -> Int
    func dataForRowAt(indexPath: IndexPath) -> Hotel
    func sortDataBy(parameter: Sorting)
}
