//
//  PasswordViewModel.swift
//  normTask
//
//  Created by it0046 on 12/21/18.
//  Copyright © 2018 it0046. All rights reserved.
//

import Foundation
import RxSwift


struct PasswordViewModel : ValidationViewModel {
    
    var errorMessage: String = "Please enter a valid Password"
    
    var data: Variable<String> = Variable("")
    var errorValue: Variable<String?> = Variable("")
    
    func validateCredentials() -> Bool {
        
        guard validateLength(text: data.value, size: (6,15)) else{
            errorValue.value = errorMessage
            return false;
        }
        
        errorValue.value = ""
        return true
    }
    
    func validateLength(text : String, size : (min : Int, max : Int)) -> Bool{
        return (size.min...size.max).contains(text.count)
    }
}
