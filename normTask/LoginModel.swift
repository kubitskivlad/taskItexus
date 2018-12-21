//
//  LoginModel.swift
//  normTask
//
//  Created by it0046 on 12/21/18.
//  Copyright © 2018 it0046. All rights reserved.
//

import Foundation


class LoginModel {
    
    var email = ""
    var password = ""
    
    convenience init(email : String, password : String) {
        self.init()
        self.email = email
        self.password = password
    }
}
