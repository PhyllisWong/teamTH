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
    @IBOutlet weak var catImageView: UIImageView!
    
    
    var cat: Cat? {
            didSet {
                timeLabel.text = cat?.timestamp
                nameLabel.text = cat?.title
                descripLabel.text = cat?.description
                catImageView.downloadedFrom(url: (cat?.image_url)!, contentMode: .scaleAspectFit)
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

extension UIImageView {
    
    func downloadedFrom(url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        contentMode = mode
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { () -> Void in
                self.image = image
            }
            }.resume()
    }
    
    func downloadedFrom(link: String, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloadedFrom(url: url, contentMode: mode)
    }
}



