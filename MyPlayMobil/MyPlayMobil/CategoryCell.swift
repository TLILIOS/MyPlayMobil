//
//  CategoryCell.swift
//  MyPlayMobil
//
//  Created by HTLILI on 16/04/2024.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var catIV: UIImageView!
    @IBOutlet weak var catLBL: UILabel!
    
    var category: PlaymobilCategory! {
        didSet {
            catLBL.text = category.rawValue
            catIV.image = category.toImage()
        }
    }
    
}
