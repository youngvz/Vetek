//
//  HomeFeedView.swift
//  Vetek
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

class HomeFeedViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    let cellId = "cellId"
    
    lazy var addButton: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.dropShadow()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addButtonTapped)))
        view.isUserInteractionEnabled = true
        view.backgroundColor = UIColor(red:0.03, green:0.05, blue:0.44, alpha:1.00)
        view.layer.cornerRadius = 25
        return view
    }()
    
    let addIcon: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = #imageLiteral(resourceName: "plus")
        return img
    }()
    
    func addButtonTapped(){
        print("Add Button Tapped")
    }
    
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
