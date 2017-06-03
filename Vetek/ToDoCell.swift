//
//  ToDoCell.swift
//  Vetek
//
//  Created by Viraj Shah on 6/3/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

class ToDoCell: BaseCell {
    
    
    let profileImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 20
        img.contentMode = .scaleAspectFit
        img.backgroundColor = .systemColor("Blue")
        return img
    }()
    
    let chatRoomLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        label.text = "ChatRoom Name"
        label.textColor = .gray
        return label
    }()
    
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .white
        
        addSubview(profileImage)
        
        
        profileImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
