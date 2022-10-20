//
//  ViewModel.swift
//  MVVM_authorization
//
//  Created by Ildar Garifullin on 20/10/2022.
//

import UIKit
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login in faild"
            statusColor.value = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        } else {
            statusText.value = "You successfully logged in"
            statusColor.value = #colorLiteral(red: 0, green: 0.968627451, blue: 0.7507972235, alpha: 1)
        }
    }
}
