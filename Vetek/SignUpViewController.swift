//
//  SignUpViewController.swift
//  Vetek
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.contentSize = CGSize(width: self.view.frame.width, height: 800)
        sv.showsVerticalScrollIndicator = false
        return sv
    }()
    
    let logoImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = #imageLiteral(resourceName: "AppLogo")
        return img
    }()
    
    lazy var nameTextField: UITextField = {
        [weak self] in
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Full Name"
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 20
        tf.layer.borderWidth = 0.3
        tf.autocorrectionType = .no
        tf.textAlignment = .center
        tf.keyboardType = .namePhonePad
        tf.delegate = self
        return tf
    }()
    
    lazy var emailTextField: UITextField = {
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
        tf.delegate = self
        return tf
    }()
    
    lazy var phoneNumberTextField: UITextField = {
        [weak self] in
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Phone Number"
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 20
        tf.layer.borderWidth = 0.3
        tf.autocorrectionType = .no
        tf.keyboardType = .phonePad
        tf.textAlignment = .center
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
        tf.autocorrectionType = .no
        tf.setLeftPaddingPoints(16)
        tf.delegate = self
        return tf
    }()
    
    // MARK: Launch Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHelperFunctions()
    }
    
    // MARK: Setup Methods
    
    func setupHelperFunctions(){
        setupViews()
        setupNavBar()
    }
    
    func setupViews(){
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(logoImage)
        scrollView.addSubview(nameTextField)
        scrollView.addSubview(emailTextField)
        scrollView.addSubview(phoneNumberTextField)
        scrollView.addSubview(passwordTextField)
        
        scrollView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor).isActive = true

        logoImage.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        logoImage.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 24).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        nameTextField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        nameTextField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 24).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -48).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        emailTextField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 18).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -48).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        phoneNumberTextField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        phoneNumberTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 18).isActive = true
        phoneNumberTextField.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -48).isActive = true
        phoneNumberTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true

        passwordTextField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 18).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -48).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    
    func setupNavBar(){
        navigationController?.navigationBar.barTintColor = .systemColor("")
        navigationController?.navigationBar.tintColor = .systemColor("Blue")
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "KohinoorBangla-Light", size: 26)!,NSForegroundColorAttributeName: UIColor.systemColor("Blue")]
        
        self.navigationItem.title = "Sign Up"
    }
    
    
    // MARK: TextField Delegate Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        dismissKeyboard()
        return true
    }
    
}
