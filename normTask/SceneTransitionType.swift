//
//  SceneTransitionType.swift
//  normTask
//
//  Created by it0046 on 12/20/18.
//  Copyright © 2018 it0046. All rights reserved.
//

import Foundation

enum SceneTransitionType {
    // you can extend this to add animated transition types,
    // interactive transitions and even child view controllers!
    
    case root       // make view controller the root view controller
    case push       // push view controller to navigation stack
    case modal      // present view controller modally
}
