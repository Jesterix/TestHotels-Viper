//
//  DetailDetailViewInput.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

protocol DetailViewInput: class {

    /**
        @author Jesterix
        Setup initial state of the view
    */

    func setupInitialState()
    func updateView(with data: DetailViewModel)
}
