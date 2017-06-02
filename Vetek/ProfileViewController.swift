//
//  CalendarViewController.swift
//  UIKitBasics
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

extension ProfileViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews(){

        setupNavBar()
        
        view.backgroundColor = .white
        view.addSubview(profileImage)
        view.addSubview(nameLabel)
        
        profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImage.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 24).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 24).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true

        
        
    }
    
    func setupNavBar(){
        navigationController?.navigationBar.barTintColor = UIColor.systemColor("Blue")
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "KohinoorBangla-Light", size: 26)!,NSForegroundColorAttributeName: UIColor.white]
        
        self.navigationItem.title = "Profile"
        
    }

    

}
