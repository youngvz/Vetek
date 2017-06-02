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

    }    
    
    func setupNavBar(){
        navigationController?.navigationBar.barTintColor = UIColor.systemColor("Blue")
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "KohinoorBangla-Light", size: 26)!,NSForegroundColorAttributeName: UIColor.white]
        
        self.navigationItem.title = "Profile"
        
    }

    

}
