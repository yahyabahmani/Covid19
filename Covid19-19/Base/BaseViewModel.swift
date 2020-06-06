//
//  BaseViewModel.swift
//  COVID-19
//
//  Created by macbook on 3/15/1399 AP.
//  Copyright © 1399 Yahya. All rights reserved.
//

import Foundation
import UIKit

class BaseViewModel {
    weak var delegate: BaseViewModelDelegate?
    var coordinator: Coordinatable?
    
    func showError(errorString: String?) {
//        guard let error = errorString else {
//            return
//        }
//        let alertControl = AlertViewController.build { alert in
//            alert.alertTitle = "Hata"
//            alert.alertContent = error
//            alert.setRightButton(AlertViewController.Action.init(title: "Tamam"))
//            alert.alertType = .failure
//        }
//        let s = SplashViewController()
//              self.delegate = s
//        self.delegate?.presentVC(UIViewController())
    }
}

protocol BaseViewModelDelegate: class {
    func showVC(_ viewController: UIViewController)
    func presentVC(_ viewController: UIViewController)
    func popVC(_ animated: Bool)
}
extension UIViewController: BaseViewModelDelegate {
    func showVC(_ viewController: UIViewController) {
        self.show(viewController, sender: nil)
    }
    
    func presentVC(_ viewController: UIViewController) {
        self.present(viewController, animated: true)
    }
    
    func popVC(_ animated: Bool) {
        self.navigationController?.popViewController(animated: animated)
    }
}
