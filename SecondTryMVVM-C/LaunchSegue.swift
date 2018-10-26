//
//  LaunchSegue.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import UIKit

class LaunchSegue: CustomSegue {
    var router: LaunchRouter?
    
    override func perform() {
        super.perform()
        
        if let destination = destination as? LaunchVC {
            router?.start(with: destination)
        }
    }
}
