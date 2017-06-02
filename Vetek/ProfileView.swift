//
//  CalendarView.swift
//  Vetek
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.backgroundColor = .systemColor("Blue")
        img.layer.cornerRadius = 100
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "First Name"
        label.textAlignment = .center
        label.font = UIFont(name: "KohinoorBangla-Light", size: 24)
        label.textColor = .systemColor("Blue")
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    

}
