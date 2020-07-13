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
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
        mainView.tableView.register(
            HotelCell.self,
            forCellReuseIdentifier: HotelCell.reuseID)
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: HotelCell.reuseID) as? HotelCell else {
                return UITableViewCell()
        }
        
//        cell.nameLabel.text = viewModel.hotels.value[indexPath.row].name
//        cell.distanceLabel.text = "Distance from center: " + String(viewModel.hotels.value[indexPath.row].distance)
//        cell.suitesAvailableLabel.text = "Available suites: \(viewModel.hotels.value[indexPath.row].suitesAvailability.count)"
        
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    
}
