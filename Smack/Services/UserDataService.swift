//
//  UserDataService.swift
//  Smack
//
//  Created by Adrian horstmann on 01.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    private init() {}
    
    func setUserData(id: String, avatarColor: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = avatarColor
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
}
