//
//  PlayMobilCategories.swift
//  MyPlayMobil
//
//  Created by HTLILI on 16/04/2024.
//


import UIKit

enum PlaymobilCategory: String, CaseIterable {
case histoire
case sirenes
case pirates
case everDreamerz
 
func toImage() -> UIImage? {
return UIImage(named: self.rawValue)
}
}
