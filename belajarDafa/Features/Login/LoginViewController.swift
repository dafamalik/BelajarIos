//
//  LoginViewController.swift
//  belajarDafa
//
//  Created by dafamalik on 24/05/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var iconClick = false
    let imageIcon = UIImageView()

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    var isSecure = true
    
    @IBOutlet weak var imageMataKebuka: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        imageIcon.image = UIImage(named: "mataHidden")
        
        let tapGestureReconizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageMataKebuka.isUserInteractionEnabled = true
        imageMataKebuka.addGestureRecognizer(tapGestureReconizer)
    }
    
    @objc func imageTapped(tapGestureRecognizer:UITapGestureRecognizer) {
        
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        if iconClick
        {
            iconClick = false
            tappedImage.image = UIImage(named: "mata")
            tfPassword.isSecureTextEntry = false
        }
        else {
            iconClick = true
            tappedImage.image = UIImage(named: "mataHidden")
            tfPassword.isSecureTextEntry = true
        }
    }
    
    
    func setupViews() {
        
        lblTitle.textColor = .black
        btnLogin.layer.cornerRadius = 8
        tfEmail.layer.cornerRadius = 8
        tfPassword.layer.cornerRadius = 8
    }

    @IBAction func login(_ sender: UIButton) {
        
        AlertHelper.showAlertViewController(vc: self, msg: "email or password can't empty")
        print("email yang diinput adalah",tfEmail.text ?? "" )
        print("password yang diinput adalah",tfPassword.text ?? "")
    }
}
