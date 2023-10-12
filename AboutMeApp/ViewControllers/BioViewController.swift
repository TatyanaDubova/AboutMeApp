//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Татьяна Дубова on 11.10.2023.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet weak var bioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGradient()
        
        title = "\(user.person.fullName) Bio"
        bioTextView.text = user.person.bio
    }
}
