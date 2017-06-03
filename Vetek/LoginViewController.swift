//
//  ViewController.swift
//  UIKitBasics
//
//  Created by Viraj Shah on 6/1/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    let logoImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = #imageLiteral(resourceName: "AppLogo")
        return img
    }()
    
    lazy var loginTextField: UITextField = {
        [weak self] in
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Email"
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 20
        tf.layer.borderWidth = 0.3
        tf.autocorrectionType = .no
        tf.textAlignment = .center
        tf.keyboardType = .emailAddress
        tf.setLeftPaddingPoints(16)
        tf.delegate = self
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        [weak self] in
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Password"
        tf.textAlignment = .center
        tf.isSecureTextEntry = true
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 20
        tf.layer.borderWidth = 0.3
        tf.setLeftPaddingPoints(16)
        tf.delegate = self
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(handleLogIn), for: .touchUpInside)
        btn.setTitle("Log In", for: .normal)
        btn.setTitleColor(UIColor(red:0.03, green:0.05, blue:0.44, alpha:1.00), for: .normal)
        return btn
    }()
    
    lazy var signUpButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        btn.setTitle("Sign Up", for: .normal)
        btn.setTitleColor(UIColor(red:0.03, green:0.05, blue:0.44, alpha:1.00), for: .normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHelperFunctions()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == loginTextField{
            print("Dismiss TextField")
            dismissKeyboard()
        }else{
            print("Log In")
            dismissKeyboard()
            handleLogIn()
        }
        
        return true
    }
    
    func handleLogIn(){
        
        guard let emailText = loginTextField.text, !emailText.isEmpty, let passwordText = passwordTextField.text, !passwordText.isEmpty else {
            return
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    func handleSignUp(){
        
        let signUpViewController = SignUpViewController()
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
    func setupViews(){
        
        view.backgroundColor = .white
        view.addSubview(logoImage)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(signUpButton)
        
        
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -120).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        loginTextField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 60).isActive = true
        loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true

        passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 18).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUpButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: signUpButton.topAnchor, constant: -12).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

    }

    func setupHelperFunctions(){
        setupViews()
        hideKeyboardWhenTappedAround()
    }
}

