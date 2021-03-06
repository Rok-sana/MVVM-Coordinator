//
//  LogInVM.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import Foundation
import UIKit

protocol LogInVMType: class {
    
}

class LogInVM: LogInVMType {
    typealias ViewModelDependencies = MainAutManag
    
    weak var router: LogInRouterType?
    private let dependencies: ViewModelDependencies
    
    init(dependencies: ViewModelDependencies) {
        self.dependencies = dependencies
    }
    
    
        //router?.doLogOut()
    }

