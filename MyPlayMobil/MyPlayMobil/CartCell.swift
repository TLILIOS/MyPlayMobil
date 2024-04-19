//
//  CartCell.swift
//  MyPlayMobil
//
//  Created by HTLILI on 17/04/2024.
//

import UIKit

class CartCell: UITableViewCell {

    var iV: UIImageView?
    var nameLBL: UILabel?
    var priceLBL: UILabel?
    
    func setUpCell(_ playmobi: Playmobil) {
        setIfNil()
        iV?.image = playmobi.image
        nameLBL?.text = playmobi.name
        priceLBL?.text = playmobi.priceEuro()
    }
    
    func setIfNil() {
        if iV == nil {
           iV = UIImageView()
            iV?.contentMode = .scaleAspectFit
            iV?.clipsToBounds = true
            iV?.translatesAutoresizingMaskIntoConstraints = false
            addSubview(iV!)
        }
        if nameLBL == nil {
            nameLBL = UILabel()
            nameLBL?.textColor = UIColor(red: 42 / 255, green: 149 / 255, blue: 212 / 255, alpha: 1)
            nameLBL?.font = UIFont(name: "Didot", size: 20)
            nameLBL?.translatesAutoresizingMaskIntoConstraints = false
            nameLBL?.textAlignment = .center
            addSubview(nameLBL!)
        }
        if priceLBL == nil {
            priceLBL = UILabel()
            priceLBL?.textColor = .red
            priceLBL?.font = UIFont(name: "Didot", size: 20)
            priceLBL?.translatesAutoresizingMaskIntoConstraints = false
            priceLBL?.textAlignment = .right
            addSubview(priceLBL!)
        }
        iV?.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        iV?.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLBL?.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nameLBL?.leftAnchor.constraint(equalTo: iV!.rightAnchor).isActive = true
        nameLBL?.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        priceLBL?.topAnchor.constraint(equalTo: nameLBL!.bottomAnchor).isActive = true
        priceLBL?.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        priceLBL?.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        priceLBL?.leftAnchor.constraint(equalTo: iV!.rightAnchor).isActive = true
        priceLBL?.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
    }
}
