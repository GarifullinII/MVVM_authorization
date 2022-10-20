//
//  User.swift
//  MVVM_authorization
//
//  Created by Ildar Garifullin on 20/10/2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "pro", password: "12345")
    ]
}
