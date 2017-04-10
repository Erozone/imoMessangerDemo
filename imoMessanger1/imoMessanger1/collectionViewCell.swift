//
//  collectionViewCell.swift
//  imoMessanger1
//
//  Created by Mohit Kumar on 10/04/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

import UIKit

class collectionViewCell: UICollectionViewCell {
    
    //MARK:- Properties
    let profilePic:UIImageView={
        let imageView=UIImageView();
        imageView.contentMode = .scaleToFill;
        imageView.layer.cornerRadius=30;
        imageView.layer.masksToBounds=true;
        imageView.backgroundColor=UIColor.blue;
        return imageView;
    }();
    
    let nameLabel:UILabel={
        let label=UILabel();
        label.text="Priyanka Raj";
        label.font=UIFont.boldSystemFont(ofSize: 18);
        return label;
    }();
    
    let recentMsgLabel:UILabel={
        let label=UILabel();
        label.text="Hello!How are you?Its a Great Day to have fun!";
        return label;
    }();
    
    let dateAndTimeLabel:UILabel={
        let label=UILabel();
        label.text="09-04-2017";
        label.textColor=UIColor.blue;
        return label;
    }();

    let dividerLine:UIView={
        let view=UIView();
        view.backgroundColor=UIColor(white: 0.5, alpha: 0.5);
        return view;
    }()
    
    var containerView:UIView={
        let view=UIView();
        view.backgroundColor=UIColor.clear;
        return view
    }()
    
    //AWAKE FROM NIB
    override func awakeFromNib() {
        super.awakeFromNib();
        setupCell();
    }
    
    func setupCell(){
        addSubview(profilePic);
        addSubview(dividerLine);
        addSubview(containerView);
        
        addContraintsWithFormat(format: "H:|-12-[v0(60)]", views: profilePic);
        addContraintsWithFormat(format: "V:[v0(60)]", views: profilePic);
        addConstraint(NSLayoutConstraint(item: profilePic, attribute: .centerY , relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
        addContraintsWithFormat(format: "H:|-82-[v0]|", views: dividerLine)
        addContraintsWithFormat(format: "V:[v0(1)]|", views: dividerLine)
        addContraintsWithFormat(format: "H:|-82-[v0]|", views: containerView)
        addContraintsWithFormat(format: "V:|[v0]-1-|", views: containerView)
        
        setupContainerView();
    }
    
    func setupContainerView(){
        containerView.addSubview(nameLabel);
        containerView.addSubview(recentMsgLabel);
        containerView.addSubview(dateAndTimeLabel);
        
        addContraintsWithFormat(format: "H:|[v0(110)]", views: nameLabel);
        addContraintsWithFormat(format: "V:|-10-[v0(20)]", views: nameLabel);
        addContraintsWithFormat(format: "H:|-110-[v0]-60-|", views: dateAndTimeLabel);
        addContraintsWithFormat(format: "V:|-10-[v0(20)]", views: dateAndTimeLabel);
        addContraintsWithFormat(format: "H:|[v0]-60-|", views: recentMsgLabel);
        addContraintsWithFormat(format: "V:|-45-[v0(20)]", views: recentMsgLabel);
        
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
