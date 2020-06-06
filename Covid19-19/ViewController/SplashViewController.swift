//
//  SplashViewController.swift
//  COVID-19
//
//  Created by macbook on 3/11/1399 AP.
//  Copyright © 1399 Yahya. All rights reserved.
//

import UIKit

class SplashViewController: BaseViewController {
    var coordinator: Coordinatable?
    var viewModel: SplashViewModel?

    @IBOutlet weak var loadingLabel: UILabel!
    @IBOutlet weak var coronaImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.titleLabel.alpha = 0
        self.coronaImage.alpha = 0
        self.loadingLabel.alpha = 0
       

    }
    override func viewDidAppear(_ animated: Bool) {
        self.animateImage()
    }
    
    
    func animateImage() {
        UIView.animate(withDuration: 1.5, delay: 0.75, options: .curveEaseInOut, animations: {
            self.coronaImage.alpha = 1

                self.coronaImage.transform = CGAffineTransform(scaleX: 1.7, y: 1.7)
        }) { (compelete) in

            self.animateLoading()
            doAfter(1.3) {
                self.viewModel?.showHome()

            }
        }
    }
    func animateLoading() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseInOut,.repeat], animations: {
               self.loadingLabel.alpha = 1
                          self.coronaImage.transform = CGAffineTransform(scaleX: 1.7, y: 1.7)
           }) { (compelete) in
               
           }
       }


}
extension SplashViewController:InstantiatableViewControllerType{
    static var storyboardName: StoryBoardName {
        .Main
    }

    
    
}
extension UIViewController {

func segueToNextViewController(segueID: String) {
  //  delayForSeconds(delay: delay) {
        self.performSegue(withIdentifier: segueID, sender: nil)
    //}
}
}
