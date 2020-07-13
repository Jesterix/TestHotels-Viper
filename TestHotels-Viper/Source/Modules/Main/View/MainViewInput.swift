//
//  MainMainViewInput.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

protocol MainViewInput: class {

    /**
        @author Jesterix
        Setup initial state of the view
    */

    func setupInitialState()
    
    func reloadData()
}
