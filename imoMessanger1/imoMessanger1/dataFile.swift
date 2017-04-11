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
    
    let friend1 = dataFile(profilePhoto: UIImage(named:"Mark")!, friendsName: "Mark Zuckerberg", message: "I created facebook.Just tell me your name", dateOfMessage: "10-2-12");
    let friend2 = dataFile(profilePhoto: UIImage(named:"Steve")!, friendsName: "Steve Jobs", message: "I created Apple.Which iPhone does you use", dateOfMessage: "12-12-17");
    let friend3 = dataFile(profilePhoto: UIImage(named:"Hilary")!, friendsName: "Hilary Clinton", message: "Vote for me,As you do for bill", dateOfMessage: "1-1-13");
    
    
}
