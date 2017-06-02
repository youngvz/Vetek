//
//  MessagesView.swift
//  Vetek
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    let cellId = "cellId"
    
    lazy var messageButton: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.dropShadow()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(messageButtonTapped)))
        view.isUserInteractionEnabled = true
        view.backgroundColor = UIColor(red:0.03, green:0.05, blue:0.44, alpha:1.00)
        view.layer.cornerRadius = 25
        return view
    }()
    
    let messageIcon: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = #imageLiteral(resourceName: "chat")
        return img
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        var cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.contentInset = UIEdgeInsetsMake(6, 0, 0, 0)
        cv.backgroundColor = UIColor(white: 0.9, alpha: 1)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.dataSource = self
        cv.delegate = self
        cv.showsVerticalScrollIndicator = false
        return cv
    }()

}
