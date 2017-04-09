//
//  mainTableViewCell.swift
//  seiko
//
//  Created by 田中千洋 on 2016/12/24.
//  Copyright © 2016年 田中 颯. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell{

    
    var titleLabel: UILabel!
    var timeLabel: UILabel!
    var ImageView: UIImageView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!){
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        titleLabel = UILabel(frame: CGRect(x:150,y:5,width:300,height:35))
        titleLabel.font = UIFont.systemFont(ofSize: 30)
        self.addSubview(titleLabel)
        
        
        timeLabel = UILabel(frame: CGRect(x:150,y:50,width:300,height:35))
        timeLabel.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(timeLabel)
        
        ImageView = UIImageView(frame: CGRect(x: 10 , y: 10  , width: 100, height: 100))
        ImageView.layer.borderWidth = 2
        ImageView.layer.cornerRadius = 30
        ImageView.layer.masksToBounds = true
        self.addSubview(ImageView)

        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
