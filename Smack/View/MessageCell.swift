//
//  MessageCell.swift
//  Smack
//
//  Created by Adrian horstmann on 13.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messageBodyLbl: UILabel!
    @IBOutlet weak var cellBackgroundView: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(message: Message) {
        cellBackgroundView.layer.cornerRadius = 10.0
        if message.username == UserDataService.instance.name {
            cellBackgroundView.layer.backgroundColor = UIColor(red: 218, green: 248, blue: 203).cgColor
        } else {
            cellBackgroundView.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0).cgColor
        }
        
        messageBodyLbl.text = message.message
        userNameLbl.text = message.username
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        
        guard var isoDate = message.timestamp else { return }
        let end = isoDate.index(isoDate.endIndex, offsetBy: -5)
        isoDate = isoDate.substring(to: end)
        
        let isoFormatter = ISO8601DateFormatter()
        let chatDate = isoFormatter.date(from: isoDate.appending("Z"))
        
        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "dd MMM - hh:mm"
        
        if let finalDate = chatDate {
            let finalDate = newFormatter.string(from: finalDate)
            timeStampLbl.text = finalDate
        }
    }

}
