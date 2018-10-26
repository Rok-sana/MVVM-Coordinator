//
//  LogOutRouter.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import Foundation
import UIKit
protocol LogOutRouterType: FlowRouter {
    func showLaunch()
}


class LogOutRouter: LogOutRouterType {
    
    enum SegueList: String {
        case returnLaunch = "returnLaunch"
    }
    
    
    let dependencies: AppDependencies
    
    private weak var controller: UIViewController?
    
    init(dependencies: AppDependencies) {
        self.dependencies = dependencies
    }
    
    func start(with viewController: LogOutVC) {
        let vm = LogOutVM(dependencies: dependencies)
        vm.router = self
        self.controller = viewController
        viewController.configure(viewModel:vm, router: self)
    }
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let segueList = SegueList(rawValue: identifier) else {
            return
        }
        switch segueList {
        case .returnLaunch:
            if let `segue` = segue as? LaunchSegue {
                let router = LaunchRouter(dependencies: dependencies)
                segue.router = router
            }
            
            
        }
    
        
    }
    func showLaunch() {
        controller?.performSegue(withIdentifier: SegueList.returnLaunch.rawValue, sender: nil)
        
    }
}


