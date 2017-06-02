//
//  ViewController.swift
//  UIKitBasics
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

extension HomeFeedViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        //checkIfLoggedIn()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! ConversationCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 8, height: 120)
    }
    
    func setupCollectionView(){
        collectionView.register(ConversationCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }
    
    func setupViews(){
        setupCollectionView()
        setupNavBar()
        
        view.backgroundColor = .white

        view.addSubview(collectionView)
        view.addSubview(addButton)
        addButton.addSubview(addIcon)
        
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        
        addButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addButton.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -10).isActive = true
        addButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        addIcon.centerXAnchor.constraint(equalTo: addButton.centerXAnchor).isActive = true
        addIcon.centerYAnchor.constraint(equalTo: addButton.centerYAnchor).isActive = true
        addIcon.heightAnchor.constraint(equalToConstant: 25).isActive = true
        addIcon.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
    }
    
    func setupNavBar(){
        navigationController?.navigationBar.barTintColor = UIColor.systemColor("Blue")
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "KohinoorBangla-Light", size: 26)!,NSForegroundColorAttributeName: UIColor.white]

        self.navigationItem.title = "Vetek"
        
    }
    
    func checkIfLoggedIn(){

        let logInViewController = LoginViewController()
        navigationController?.present(logInViewController, animated: true, completion: nil)
        
    }
    
}
