//
//  LogInRouter.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import Foundation
import UIKit
protocol LogInRouterType: FlowRouter {
    func showLogOut()
}


class LogInRouter: LogInRouterType {
    
    enum SegueList: String {
        case logOutNow = "logOutNow"
    }
    
    let dependencies: AppDependencies
    
    private weak var controller: UIViewController?
    
    init(dependencies: AppDependencies) {
        self.dependencies = dependencies
    }
    
    func start(with viewController: LogInVC) {
        let vm = LogInVM(dependencies: dependencies)
        vm.router = self
        self.controller = viewController
        viewController.configure(viewModel: vm, router: self)
    }
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let segueList = SegueList(rawValue: identifier) else {
            return
        }
        switch segueList {
        case .logOutNow:
            if let `segue` = segue as? LaunchSegue {
                let router = LaunchRouter(dependencies: dependencies)
                segue.router = router
            }
            
            
        }
        
        
    }
    func showLogOut() {
        controller?.performSegue(withIdentifier: SegueList.logOutNow.rawValue, sender: nil)
        
    }

    

}
