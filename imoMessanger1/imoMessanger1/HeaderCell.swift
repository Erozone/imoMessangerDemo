//
//  HeaderCell.swift
//  imoMessanger1
//
//  Created by Mohit Kumar on 11/04/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

import UIKit

class HeaderCell: UICollectionViewCell {
    
    let imgView:UIImageView={
        let videImageView=UIImageView();
        vide
    }();
    
    override func awakeFromNib() {
        super.awakeFromNib();
    }
    
    func setupCell(){
        
    }
    
    //Contraints of the Views
    func addContraintsWithFormat(format: String,views : UIView...){
        var viewsDictionary = [String:UIView]()
        for(index,view) in views.enumerated(){
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
}
