//
//  ViewModel.swift
//  MVVM_authorization
//
//  Created by Ildar Garifullin on 20/10/2022.
//

import UIKit

class ViewModel {
    var statusText = Dynamic("")
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login in faild"
        } else {
            statusText.value = "You successfully logged in"
        }
    }
}
