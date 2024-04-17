//
//  PlayMobil.swift
//  MyPlayMobil
//
//  Created by HTLILI on 16/04/2024.
//

import UIKit

struct Playmobil {
    var name: String
    var reference: Int
    var price: Double
    var category: PlaymobilCategory
    
    func priceEuro() -> String {
        return "\(price)€"
    }
    
    var image: UIImage? {
    return UIImage(named: name)
    }
     
    var refString: String {
    return "Ref: \(reference)"
    }
}
