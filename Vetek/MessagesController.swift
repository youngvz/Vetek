//
//  MessagesViewController.swift
//  UIKitBasics
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

extension MessagesViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        setupCollectionView()
        setupNavBar()
        
        view.backgroundColor = .white
        
        view.addSubview(collectionView)
        view.addSubview(messageButton)
        messageButton.addSubview(messageIcon)
        
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        messageButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        messageButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        messageButton.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -10).isActive = true
        messageButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        messageIcon.centerXAnchor.constraint(equalTo: messageButton.centerXAnchor).isActive = true
        messageIcon.centerYAnchor.constraint(equalTo: messageButton.centerYAnchor).isActive = true
        messageIcon.heightAnchor.constraint(equalToConstant: 25).isActive = true
        messageIcon.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
    }
    
    func setupNavBar(){
        navigationController?.navigationBar.barTintColor = UIColor.systemColor("Blue")
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "KohinoorBangla-Light", size: 26)!,NSForegroundColorAttributeName: UIColor.white]
        
        self.navigationItem.title = "Messages"
    }
    
    func messageButtonTapped(){
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! ToDoCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 8, height: 70)
    }
    
    func setupCollectionView(){
        collectionView.register(ToDoCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }

    
}
