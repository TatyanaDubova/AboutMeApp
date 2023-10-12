//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by Татьяна Дубова on 11.10.2023.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGradient()
        
        photoImageView.image = UIImage(named: user.person.photo)
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
        
        title = user.person.fullName
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.job.nameCompany
        departmentLabel.text = user.person.job.department
        jobTitleLabel.text = user.person.job.jobTitle
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
}
