//
//  ViewController.swift
//  imoMessanger1
//
//  Created by Mohit Kumar on 09/04/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController{
    
    var collectionView:UICollectionView!
    
    func setupCollectionView()
    {
        let layout=UICollectionViewFlowLayout();
        layout.minimumInteritemSpacing=0;
        layout.minimumLineSpacing=0;
        collectionView=UICollectionView(frame: view.frame, collectionViewLayout: layout);
        collectionView.register(collectionViewCell.self, forCellWithReuseIdentifier: "cell");
        collectionView.register(HeaderCell.self, forCellWithReuseIdentifier: "headerCell")
        collectionView.backgroundColor=UIColor.clear;
        collectionView.delegate=self;
        collectionView.dataSource=self;
        view.addSubview(collectionView);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        setupCollectionView();
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

extension FrontViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(section == 0){
            return 2;
        }
        return 10;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(indexPath.section == 0){
            let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "headerCell", for: indexPath) as! HeaderCell;
            if(indexPath.row == 0){
                cell.setupUpperCell();
            }else{
                cell.setupLowerView();
            }
            return cell;
        }
        else{
            let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! collectionViewCell;
            cell.awakeFromNib();
            return cell;
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 70);
    }
}

