//
//  LogOutVM.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import Foundation
import UIKit

protocol LogOutVMType: class {
    
}

class LogOutVM: LogOutVMType {
    typealias ViewModelDependencies = MainAutManag
    
    weak var router: LogOutRouterType?
    private let dependencies: ViewModelDependencies
    
    init(dependencies: ViewModelDependencies) {
        self.dependencies = dependencies
    }
    
    
   
}
