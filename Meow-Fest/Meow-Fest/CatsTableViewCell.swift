//
//  CatsTableViewCell.swift
//  Meow-Fest
//
//  Created by Phyllis Wong on 5/5/18.
//  Copyright © 2018 Phyllis Wong. All rights reserved.
//

import UIKit
import WebKit

class CatsTableViewCell: UITableViewCell {
  
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descripLabel: UILabel!
    @IBOutlet weak var imageWebView: WKWebView!
    
    
    var cat: Cat? {
            didSet {
                timeLabel.text = cat?.timestamp
                nameLabel.text = cat?.title
                descripLabel.text = cat?.description
                
                let request = URLRequest(url: (cat?.image_url)!)
                imageWebView.load(request)
            }
        }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
