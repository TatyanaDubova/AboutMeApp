//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Татьяна Дубова on 06.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
//MARK: - override funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == "User", passwordTextField.text == "Password" else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeTextField = segue.destination as? WelcomeViewController else { return }
        welcomeTextField.welcomeText = "Welcome, " + (userNameTextField.text ?? "") + "!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
//MARK: - IBActions
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func logInButtonPressed() {
    }
}

//MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and messege: String) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
