//
//  Gradient.swift
//  AboutMeApp
//
//  Created by Татьяна Дубова on 11.10.2023.
//

import UIKit

extension UIView {
    func addGradient() {
    let colorOne = UIColor(
        red: 202/255,
        green: 124/255,
        blue: 140/255,
        alpha: 1
    )
        
    let colorTwo = UIColor(
        red: 92/255,
        green: 114/255,
        blue: 164/255,
        alpha: 1
    )
    
    let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}




