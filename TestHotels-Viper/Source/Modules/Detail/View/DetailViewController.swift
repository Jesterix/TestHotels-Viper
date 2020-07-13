//
//  DetailDetailViewController.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, DetailViewInput {

    var output: DetailViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: DetailViewInput
    func setupInitialState() {
    }
}
