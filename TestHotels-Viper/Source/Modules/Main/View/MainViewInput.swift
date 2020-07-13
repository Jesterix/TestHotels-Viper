//
//  MainMainViewInput.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

protocol MainViewInput: class {
    func setupInitialState()
    func reloadData()
    func animate(loading: Bool)
}
