//
//  LauncVM.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import Foundation
import UIKit

protocol LaunchVMType: class {
    
    
   
}

class LaunchVM: LaunchVMType {
    
    
    typealias ViewModelDependencies = MainAutManag
    
    weak var router: LaunchRouterType?
    private let dependencies: ViewModelDependencies
   
    init(dependencies: ViewModelDependencies) {
        self.dependencies = dependencies
    }
    
    func decideWhereToGo() {
        let loggedIn = Bool.random()
        
        if loggedIn {
            router?.showLogout()
        } else {
            router?.showLogin()
        }
    }
    
   
}
