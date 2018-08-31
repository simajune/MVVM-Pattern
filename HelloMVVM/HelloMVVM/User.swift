//
//  User.swift
//  HelloMVVM
//
//  Created by SIMA on 31/08/2018.
//  Copyright © 2018 devtejay. All rights reserved.
//

import Foundation

class User{
    var firstName: String!
    var lastName: String!
    var email: String!
    var password: String!
    
    init(firstName: String, lastName: String, email: String, password: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
    
    init(vm: RegistrationViewModel) {
        self.firstName = vm.firstName
        self.lastName = vm.lastName
        self.email = vm.email
        self.password = vm.password
    }
    
}
