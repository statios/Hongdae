//
//  ViewController.swift
//  HongDae
//
//  Created by Stat.So on 2020/11/18.
//

import UIKit

class LoginViewController: UIViewController {

  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    emailTextField.text = nil
    passwordTextField.text = nil
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    emailTextField.becomeFirstResponder()
  }

  @IBAction func tappedLoginButton(_ sender: Any) {
    //Request login to server -> email, password
    let result = requestLogin(email: emailTextField.text,
                              password: passwordTextField.text)
    if result {
      //Success
      self.performSegue(withIdentifier: "LoginToMain", sender: self)
    } else {
      //Failure
      let alertController = UIAlertController(
        title: "Failure",
        message: "Email or password is not valid.",
        preferredStyle: .alert)
      
      let alertAction = UIAlertAction(
        title: "Cancel",
        style: .cancel) { [weak self] _ in
        // After tap a cancel button
        self?.emailTextField.text = nil
        self?.passwordTextField.text = nil
        self?.emailTextField.becomeFirstResponder()
      }
      
      alertController.addAction(alertAction)
      self.present(alertController, animated: true)
    }
  
}
  
  func requestLogin(email: String?,
                    password: String?) -> Bool {
    return email == "123@123.123" && password == "123123"
  }
  
}
