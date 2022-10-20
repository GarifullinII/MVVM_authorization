//
//  ViewController.swift
//  MVVM_authorization
//
//  Created by Ildar Garifullin on 19/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - outlets
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var label: UILabel!
    
    var viewModel = ViewModel()
    
    func initialState() {
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()

        initialState()
    }
    
    // MARK: - actions
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: (passwordField.text ?? ""))
    }

    func bindViewModel() {
        viewModel.statusText.bin { (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        }
    }
}

