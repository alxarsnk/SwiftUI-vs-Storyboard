//
//  TableViewCell.swift
//  StoryboardApp
//
//  Created by Александр Арсенюк on 27.09.2020.
//  Copyright © 2020 Personal Team. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var postView: UIImageView!
    
    @IBOutlet weak var avatarView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(user: User) {
        postView.image = user.postImage
        avatarView.image = user.avatarImage
        avatarView.contentMode = .scaleAspectFill
        postView.contentMode = .scaleToFill
        label.text = "\(user.name) \(user.surname) \n\(user.age) лет"
        postView.layer.cornerRadius = 8
    }
    
}
