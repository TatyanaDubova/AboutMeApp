//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Татьяна Дубова on 06.10.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeTextLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextLabel.text = welcomeText
        
        // Gradient
        let colorOne = UIColor(red: 202 / 255, green: 124 / 255, blue: 140 / 255, alpha: 1).cgColor
        let colorTwo = UIColor(red: 92 / 255, green: 114 / 255, blue: 164 / 255, alpha: 1).cgColor
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [colorOne, colorTwo]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    @IBAction func logOutButtonPressed() {
    }
}
