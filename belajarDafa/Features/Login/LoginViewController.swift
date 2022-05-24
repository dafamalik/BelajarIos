//
//  LoginViewController.swift
//  belajarDafa
//
//  Created by dafamalik on 24/05/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews() {
        
        lblTitle.textColor = .black
        btnLogin.layer.cornerRadius = 8
        tfEmail.layer.cornerRadius = 8
        tfPassword.layer.cornerRadius = 8
    }

    @IBAction func login(_ sender: UIButton) {
        
        AlertHelper.showAlertViewController(vc: self, msg: "email or password can't empty")
        print("email yang diinput adalah",tfEmail.text ?? "")
        print("password yang diinput adalah",tfPassword.text ?? "")
    }
}
