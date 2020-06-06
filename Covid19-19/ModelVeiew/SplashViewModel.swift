//
//  SplashViewModel.swift
//  COVID-19
//
//  Created by macbook on 3/15/1399 AP.
//  Copyright © 1399 Yahya. All rights reserved.
//

import Foundation
import UIKit
class SplashViewModel: BaseViewModel {
    func showHome() {
//        let vc1 = HomeViewController.instantiate()
//        vc.presentVC(vc1)
        (self.coordinator as? SplashCoordinator)?.showHomePage()

    }
}
