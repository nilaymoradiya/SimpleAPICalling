//
//  RegisterVC.swift
//  XcelTechTask
//
//  Created by Nilay M on 03/05/23.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtMobileNo: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCountry: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var btnSignup: UIButton!
    @IBOutlet weak var btnPassword: UIButton!
    @IBOutlet weak var btnConfirmPassword: UIButton!
    
    var viewModel: RegisterViewModel = RegisterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // setupUI
    private func setupUI() {
        self.btnSignup.applyGradient(colors: [RegisterVC.UIColorFromRGB(0x2B95CE).cgColor, RegisterVC.UIColorFromRGB(0x2ECAD5).cgColor])
    }

    // registerAuth
    private func registerAuth() {
        viewModel.register { response in
            
        }
    }
    
    // Button Action Methods
    @IBAction func didClickOnPasswordButton(_ sender: Any) {
        btnPassword.isSelected = !btnPassword.isSelected
        txtPassword.isSecureTextEntry = !txtPassword.isSecureTextEntry
    }
    
    @IBAction func didClickOnConfirmPasswordButton(_ sender: Any) {
        btnConfirmPassword.isSelected = !btnConfirmPassword.isSelected
        txtConfirmPassword.isSecureTextEntry = !txtConfirmPassword.isSecureTextEntry
    }
    
    
    @IBAction private func didClickOnSignupButton(_ sender: Any) {
        self.registerAuth()
    }

    @IBAction private func didClickOnLoginButton(_ sender: Any) {
        
    }
}

extension RegisterVC {
    static func UIColorFromRGB(_ rgbValue: Int) -> UIColor {
        return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16))/255.0, green: ((CGFloat)((rgbValue & 0x00FF00) >> 8))/255.0, blue: ((CGFloat)((rgbValue & 0x0000FF)))/255.0, alpha: 1.0)
    }
}
