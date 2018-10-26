//
//  CustomSegue.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import Foundation
import UIKit
class CustomSegue: UIStoryboardSegue{
     override func perform(){
        UIApplication.shared.delegate?.window??.rootViewController = destination
    }
    
}
