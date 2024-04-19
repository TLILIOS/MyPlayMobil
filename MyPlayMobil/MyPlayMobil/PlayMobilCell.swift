//
//  PlayMobilCell.swift
//  MyPlayMobil
//
//  Created by HTLILI on 17/04/2024.
//

import UIKit

class PlayMobilCell: UITableViewCell {

    @IBOutlet weak var viewContainer: UIView!
    
    @IBOutlet weak var playMIV: UIImageView!
    
    @IBOutlet weak var playMobNameLBL: UILabel!
    
    @IBOutlet weak var refLBL: UILabel!
    
    @IBOutlet weak var priceLbl: UILabel!
    
    var playmo: Playmobil!
    func setUpCell(_ playmobil: Playmobil) {
        viewContainer.layer.cornerRadius = 20
        viewContainer.layer.shadowColor = UIColor.blue.cgColor
        viewContainer.layer.shadowOffset = CGSize(width: 0, height: 3)
        playMIV.layer.cornerRadius = 10
        viewContainer.layer.shadowOpacity = 0.75
        viewContainer.layer.shadowRadius = 5
        
        self.playmo = playmobil
        playMobNameLBL.text = playmo.name
        playMIV.image = playmo.image
        refLBL.text = playmo.refString
        priceLbl.text = playmo.priceEuro()
    }
    
    
    
    @IBAction func addToSelection(_ sender: UIButton) {
        selected.append(playmo)
    }
    
    
}
