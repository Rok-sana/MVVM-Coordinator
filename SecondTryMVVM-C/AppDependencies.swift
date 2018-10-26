//
//  AppDependencive.swift
//  SecondTryMVVM-C
//
//  Created by swstation on 8/16/18.
//  Copyright © 2018 swstation. All rights reserved.
//

import Foundation
protocol MainAutManag {
    var mainAutMan: AutorizeManagerType{get}
}
struct AppDependencies:MainAutManag {
    var mainAutMan: AutorizeManagerType
    
}
