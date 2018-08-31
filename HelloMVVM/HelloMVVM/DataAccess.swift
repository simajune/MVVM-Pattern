//
//  DataAccess.swift
//  HelloMVVM
//
//  Created by SIMA on 01/09/2018.
//  Copyright © 2018 devtejay. All rights reserved.
//

import Foundation

class DataAccess {
    
    func getAllUser() -> [User] {
        var users = [User]()
        users.append(User(firstName: "Mohammad", lastName: "Azam", email: "azamsharp@gmail.com", password: "password"))
        users.append(User(firstName: "John", lastName: "Doe", email: "johndoe@gmail.com", password: "password"))
        users.append(User(firstName: "Mary", lastName: "Kate", email: "marykate@gmail.com", password: "password"))
        users.append(User(firstName: "Alex", lastName: "Lowe", email: "alexlowe@gmail.com", password: "password"))
        
        return users
    }
}
