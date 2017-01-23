//
//  MusicCellTableViewCell.swift
//  PartyRock
//
//  Created by Adam Seppi on 1/14/17.
//  Copyright © 2017 AdamSeppi. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {

    @IBOutlet var videoPreviewImage: UIImageView!
    @IBOutlet var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(burner: Burner) {
        videoTitle.text = burner.videoTitle
        //videoPreviewImage =
    }

}
