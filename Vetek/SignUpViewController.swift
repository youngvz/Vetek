//
//  SignUpViewController.swift
//  Vetek
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHelperFunctions()
    }
    
    func setupHelperFunctions(){
        setupViews()
        setupNavBar()
    }
    
    func setupViews(){
        view.backgroundColor = .white
    }
    
    func setupNavBar(){
        navigationController?.navigationBar.barTintColor = UIColor.systemColor("")
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "KohinoorBangla-Light", size: 26)!,NSForegroundColorAttributeName: UIColor.systemColor("Blue")]
        
        self.navigationItem.title = "Sign Up"

    }
}
