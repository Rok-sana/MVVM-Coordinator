//
//  LaunchRouter.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import Foundation
import UIKit
protocol FlowRouter: class {
    var dependencies: AppDependencies { get }
    func prepare(for segue: UIStoryboardSegue,sender: Any?)
   
}


protocol LaunchRouterType: FlowRouter {
    func showLogin()
    func showLogout()
}


class LaunchRouter: LaunchRouterType {
     enum SegueList: String {
        case loginSegue = "loginSegue"
        case logoutSegue = "logoutSegue"
    
    }
    let dependencies: AppDependencies
    
    private weak var controller: UIViewController?
    
    init(dependencies: AppDependencies) {
        self.dependencies = dependencies
    }
    
    func start(with viewController: LaunchVC) {
        let vm = LaunchVM(dependencies: dependencies)
        vm.router = self
        self.controller = viewController
        viewController.configure(viewModel: vm, router: self)
        vm.decideWhereToGo()
    }
    
    func prepare(for segue: UIStoryboardSegue,sender: Any?) {
        guard let identifier = segue.identifier, let segueList = SegueList(rawValue: identifier) else {
                      return
       }
 
        switch segueList {
          case .loginSegue:
            if let destination = segue.destination as? LogInVC  {
                let router = LogInRouter(dependencies: dependencies)
                router.start(with: destination)
                
            }
        case .logoutSegue:
            if let destination = segue.destination as? LogOutVC  {
                let router = LogOutRouter(dependencies: dependencies)
                router.start(with: destination)
           
        }
    
        }
       
    }
    
    func showLogin() {
        controller?.performSegue(withIdentifier: SegueList.loginSegue.rawValue, sender: nil)
    }

    func showLogout() {
        controller?.performSegue(withIdentifier: SegueList.logoutSegue.rawValue, sender: nil)
        
    }
}

//extension LaunchRouter {
//    func doLogIn() {
//        controller?.prepare(for: , sender: nil)
//
//    }




