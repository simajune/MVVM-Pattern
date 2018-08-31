//
//  UsersListViewModel.swift
//  HelloMVVM
//
//  Created by SIMA on 01/09/2018.
//  Copyright © 2018 devtejay. All rights reserved.
//

import Foundation

class UsersListViewModel {
    
    var userViewModels: [UserViewModel] = [UserViewModel]()
    private var dataAccess: DataAccess
    
    init(dataAccess: DataAccess) {
        self.dataAccess = dataAccess
        
        populateUsers()
    }
    
    private func populateUsers() {
        let users = self.dataAccess.getAllUser()
        self.userViewModels = users.flatMap { user in
            return UserViewModel(user: user)
        }
    }
    
}

class UserViewModel {
    
    var firstName: String!
    var lastName: String!
    
    init(user: User) {
        self.firstName = user.firstName
        self.lastName = user.lastName
    }
    
}
