//
//  Extention.swift
//  COVID-19
//
//  Created by macbook on 3/15/1399 AP.
//  Copyright © 1399 Yahya. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    
    public func delayForSeconds(delay: Double, completion: @escaping() -> ()) {
        let timer = DispatchTime.now() + delay
        
        DispatchQueue.main.asyncAfter(deadline: timer) {
            completion()
        }
    }
    
}

extension UIViewController {
    
    func segueToNextViewController(segueID: String, delay: Double) {
        delayForSeconds(delay: delay) {
            self.performSegue(withIdentifier: segueID, sender: nil)
        }
    }
    
}
public func doAfter(_ delaySeconds: Double, on queue: DispatchQueue = DispatchQueue.main, _ block: @escaping () -> Void) {
    queue.asyncAfter(deadline: DispatchTime.now() + Double(Int64(delaySeconds * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: block)
}
