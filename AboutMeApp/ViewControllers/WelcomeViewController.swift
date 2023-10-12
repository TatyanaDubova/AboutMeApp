//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Татьяна Дубова on 06.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeTextLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGradient()
        
        welcomeTextLabel.text = """
            Welcome, \(user.login)!
            My name is \(user.person.fullName)
            """
    }

}
