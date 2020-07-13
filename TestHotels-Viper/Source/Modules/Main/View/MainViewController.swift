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
        
        mainView.switchControl.addTarget(
            self,
            action: #selector(sortHotels),
            for: .valueChanged)
    }
    
    @objc private func sortHotels() {
        if mainView.switchControl.isOn {
            //            viewModel.hotels.value.sort
            //                { $0.suitesAvailability.count < $1.suitesAvailability.count }
        } else {
            //            viewModel.hotels.value.sort
            //                { $0.distance < $1.distance }
        }
        mainView.tableView.reloadData()
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return output.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: HotelCell.reuseID) as? HotelCell else {
                return UITableViewCell()
        }
        
        cell.configure(with: output.dataForRowAt(indexPath: indexPath))
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
//    func tableView(
//        _ tableView: UITableView,
//        didSelectRowAt indexPath: IndexPath
//    ) {
//        tableView.deselectRow(at: indexPath, animated: false)
//
//        self.navigationController?.pushViewController(
//            DetailViewController(hotel: self.viewModel.hotels.value[indexPath.row]),
//            animated: true)
//    }
}
