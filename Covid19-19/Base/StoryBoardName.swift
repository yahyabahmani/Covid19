//
//  StoryBoardName.swift
//  COVID-19
//
//  Created by macbook on 3/14/1399 AP.
//  Copyright © 1399 Yahya. All rights reserved.
//

import Foundation
import UIKit
enum StoryBoardName:String {
    case Main = "Main"
    
    var storyboard:UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
}
