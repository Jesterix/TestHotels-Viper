//
//  DetailDetailInitializer.swift
//  TestHotels-Viper
//
//  Created by Jesterix on 13/07/2020.
//  Copyright © 2020 George Kh.. All rights reserved.
//

import UIKit

class DetailModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var detailViewController: DetailViewController!

    override func awakeFromNib() {

        let configurator = DetailModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: detailViewController)
    }

}
