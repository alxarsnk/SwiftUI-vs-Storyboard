//
//  UserModel.swift
//  StoryboardApp
//
//  Created by Александр Арсенюк on 27.09.2020.
//  Copyright © 2020 Personal Team. All rights reserved.
//

import UIKit

class User: Identifiable {
    var name: String
    var surname: String
    var age: Int
    var avatarImage: UIImage
    var bio: String
    var postImage: UIImage
    
    init() {
        name = "Ivan"
        surname = "Ivanov"
        age = 18
        avatarImage = #imageLiteral(resourceName: "avatarImage")
        bio = "Hello there!"
        postImage = #imageLiteral(resourceName: "postImage")
    }
    
}
