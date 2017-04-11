//
//  HeaderCell.swift
//  imoMessanger1
//
//  Created by Mohit Kumar on 11/04/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

import UIKit

class HeaderCell: UICollectionViewCell {
    
    let shareIcon:UIImageView={
        let imageView=UIImageView();
        imageView.contentMode = .scaleToFill;
        imageView.layer.cornerRadius=30;
        imageView.layer.masksToBounds=true;
//        imageView.image=UIImage(named: "PC");
        imageView.backgroundColor = UIColor.blue;
        return imageView;
    }();
    
    let dividerView:UIView = {
        let view = UIView();
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5);
        return view;
    }();
    
    let label:UILabel={
        let inviteLabel = UILabel();
        inviteLabel.text = "Invite people";
        inviteLabel.textColor = UIColor.blue;
        return inviteLabel;
    }();
    
    let leftButton:UIButton={
        let myButton=UIButton(type: UIButtonType.system);
        myButton.tintColor = UIColor.blue;
        myButton.setTitle(" Video call", for: .normal);
        myButton.setImage(UIImage(named:"videoCall"), for: .normal);
        myButton.layer.borderColor = UIColor.white.cgColor
        
        return myButton;
    }();
    
    let rightButton:UIButton={
        let myButton=UIButton(type: UIButtonType.system);
        myButton.tintColor = UIColor.blue;
        myButton.setTitle(" Audio call", for: .normal);
        myButton.setImage(UIImage(named:"videoCall"), for: .normal);
        myButton.layer.borderColor = UIColor.white.cgColor
        
        return myButton;
    }();
    
    override func awakeFromNib() {
        super.awakeFromNib();
        //setupUpperCell();
    }
    
    func setupUpperCell(){
        addSubview(shareIcon);
        addSubview(label);
        addSubview(dividerView);
        
        addContraintsWithFormat(format: "H:|-12-[v0(60)]", views: shareIcon);
        addContraintsWithFormat(format: "V:[v0(60)]", views: shareIcon);
        addConstraint(NSLayoutConstraint(item: shareIcon, attribute: .centerY , relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
        addContraintsWithFormat(format: "H:|-82-[v0]|", views: label);
        addContraintsWithFormat(format: "V:|-15-[v0(40)]", views: label);
        addContraintsWithFormat(format: "H:|-82-[v0]|", views: dividerView)
        addContraintsWithFormat(format: "V:[v0(1)]|", views: dividerView)
    }
    
    func setupLowerView(){
        addSubview(leftButton);
        addSubview(dividerView);
        addSubview(rightButton);
        
        addContraintsWithFormat(format: "H:|-40-[v0(120)]", views: leftButton);
        addContraintsWithFormat(format: "V:|-20-[v0(40)]", views: leftButton);
        addContraintsWithFormat(format: "H:|-200-[v0(120)]", views: rightButton);
        addContraintsWithFormat(format: "V:|-20-[v0(40)]", views: rightButton);
        addContraintsWithFormat(format: "H:|-82-[v0]|", views: dividerView)
        addContraintsWithFormat(format: "V:[v0(1)]|", views: dividerView)
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
