//
//  HomeViewController.swift
//  COVID-19
//
//  Created by macbook on 3/14/1399 AP.
//  Copyright © 1399 Yahya. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    var viewModel:HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
extension HomeViewController:InstantiatableViewControllerType{
    static var storyboardName: StoryBoardName {
        .Main
    }

    
    
}
