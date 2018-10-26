//
//  ViewController.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import UIKit

class LaunchVC: UIViewController {
    
    private var router: FlowRouter!
    private var viewModel: LaunchVMType!
    
    func configure(viewModel: LaunchVMType, router: FlowRouter) {
        self.viewModel = viewModel
        self.router = router
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        router.prepare(for: segue, sender: sender)
    }
}

