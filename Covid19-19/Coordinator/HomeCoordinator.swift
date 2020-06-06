//
//  HomeCoordinator.swift
//  COVID-19
//
//  Created by macbook on 3/14/1399 AP.
//  Copyright © 1399 Yahya. All rights reserved.
//

import Foundation
import UIKit
class HomeCoordinator:Coordinatable {
var rootViewController: UIViewController

init() {
    //let viewController = HomeViewController.instantiate()
    let viewModel = HomeViewModel()
    let nc = HomeViewController.instantiateNC()
    let vc = nc.viewControllers.first as! HomeViewController
    vc.viewModel = viewModel
    vc.viewModel.delegate = vc
    self.rootViewController = nc
    vc.viewModel.coordinator = self
}
}
