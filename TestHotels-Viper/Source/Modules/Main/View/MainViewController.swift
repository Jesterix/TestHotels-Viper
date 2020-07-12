//
//  MainMainViewController.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 12/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewInput {

    var output: MainViewOutput!
    var mainView: MainView!
    
    override func loadView() {
        mainView = MainView()
        self.view = mainView
    }

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: MainViewInput
    func setupInitialState() {
    }
}
