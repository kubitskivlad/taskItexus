//
//  ValidationViewModel.swift
//  normTask
//
//  Created by it0046 on 12/21/18.
//  Copyright © 2018 it0046. All rights reserved.
//

import Foundation
import RxSwift

protocol ValidationViewModel {
    
    var errorMessage: String { get }
    
    // Observables
    var data: Variable<String> { get set }
    var errorValue: Variable<String?> { get}
    
    // Validation
    func validateCredentials() -> Bool
}
