//
//  dataFile.swift
//  imoMessanger1
//
//  Created by Mohit Kumar on 11/04/17.
//  Copyright © 2017 Mohit Kumar. All rights reserved.
//

import UIKit

class dataFile: NSObject {
    var image:UIImage?
    var name:String?
    var message:String?
    var date:String?
    
    init(profilePhoto:UIImage,friendsName:String,message:String,dateOfMessage:String) {
        image=profilePhoto;
        name=friendsName;
        self.message=message;
        date=dateOfMessage;
    }
}


class DataSouceForCollectionView{
    
    var friend1 = dataFile(profilePhoto: UIImage(named:"Mark")!, friendsName: "Mark Zuckerberg", message: "I created facebook.Just tell me your name", dateOfMessage: "10-2-12");
    var friend2 = dataFile(profilePhoto: UIImage(named:"Steve")!, friendsName: "Steve Jobs", message: "I created Apple.Which iPhone does you use", dateOfMessage: "12-12-17");
    var friend3 = dataFile(profilePhoto: UIImage(named:"Hilary")!, friendsName: "Hilary Clinton", message: "Vote for me,As you do for bill", dateOfMessage: "1-1-13");
    var friend4 = dataFile(profilePhoto: UIImage(named:"PC")!, friendsName: "Priyanka Chopra", message: "I am doing well.What's you doing?", dateOfMessage: "11-1-11");
    var friend5 = dataFile(profilePhoto: UIImage(named:"Donald")!, friendsName: "Donald Trump", message: "You are fired!", dateOfMessage: "12-2-16");
    var friend6 = dataFile(profilePhoto: UIImage(named:"Gandhi")!, friendsName: "Mahatama Gandhi", message: "Love,Peace and Joy!", dateOfMessage: "1-4-47");
    
    func getData()->[NSObject]{
        let dataArray = [friend1,friend2,friend3,friend4,friend5,friend6];
        return dataArray;
    }
    
    
}
