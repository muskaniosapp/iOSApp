//
//  LoginVC.swift
//  neXjob.in
//
//  Created by Pioneer on 10/12/22.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnFogotPassword: UIButton!
    
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnViaThumb: UIButton!
    
    @IBOutlet weak var btnLoginWithOTP: UIButton!
    
    @IBOutlet weak var btnCreateAnAccount: UIButton!
    
    @IBOutlet weak var btnSingUpWithGoogle: UIButton!
    
    @IBOutlet weak var btnSingUpWithFacebook: UIButton!
    
    @IBOutlet weak var btnLinkedin: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtEmail.layer.cornerRadius = 10
        txtEmail.layer.borderWidth = 2
        txtEmail.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtEmail.clipsToBounds = true
        txtEmail.layer.shadowRadius = 4.0
        
        txtEmail.layer.masksToBounds = false
        txtEmail.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtEmail.layer.shadowOpacity = 0.5
        txtEmail.layer.shadowRadius = 4.0
        txtEmail.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        //test
        txtPassword.layer.cornerRadius = 10
        txtPassword.layer.borderWidth = 2
        txtPassword.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtPassword.clipsToBounds = true
        txtPassword.layer.shadowRadius = 4.0
        
        txtPassword.layer.masksToBounds = false
        txtPassword.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtPassword.layer.shadowOpacity = 0.5
        txtPassword.layer.shadowRadius = 4.0
        txtPassword.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        btnLogin.layer.cornerRadius = 25
        btnViaThumb.layer.cornerRadius = 25
        btnLoginWithOTP.layer.cornerRadius = 25
        btnCreateAnAccount.layer.cornerRadius = 25
       // btnSingUpWithGoogle.layer.cornerRadius = 25
        //btnSingUpWithFacebook.layer.cornerRadius = 25
        
        //btnLinkedin.layer.cornerRadius = 25
    }
   
    
    
    @IBAction func forgotPasswordActionBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ResetPasswordVC") as! ResetPasswordVC
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func viaThumbActionBtn(_ sender: Any) {
    }
    
    @IBAction func loginActionBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func linkedinActionBtn(_ sender: Any) {
    }
    
    @IBAction func createAnAccountActionBtn(_ sender: Any) {
    }
    
    @IBAction func singUpWithGoogleActionBtn(_ sender: Any) {
    }
        
    @IBAction func singUpWithFacebook(_ sender: Any) {
    }
    
    
    

}
