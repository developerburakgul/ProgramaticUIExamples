//
//  LoginPageVC.swift
//  LoginPage2
//
//  Created by Burak Gül on 7.08.2023.
//

import UIKit

class LoginPageVC: UIViewController  {

    
    var labelStackView: UIStackView!
    var emailStackView: UIStackView!
    var passwordStackView : UIStackView!
    var signInStackView : UIStackView!
    var createAccountStackView : UIStackView!



    

    


    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
        setupEmail()
        setupPassword()
        SetupSignIn()
        setupCreateAccount()


   
    }
    
    
    
    
    
    
    
    
    
    //MARK: - FUNCTİONS
    
    
    func setupLabel()  {
        
        var UILabel1  : UILabel = {
            var label : UILabel = UILabel()
            label.text = "Hello Again !"
            label.textColor = .purple
            label.font = UIFont.boldSystemFont(ofSize: 30)
            label.numberOfLines = 0
            label.textAlignment = .center
            return label
            
        }()
        
         var UILabel2  : UILabel = {
            var label : UILabel = UILabel()
            label.text = "Fill Your Details Or Continue With Social Media"
            label.textColor = .gray
            label.font = UIFont.boldSystemFont(ofSize: 20)
            label.numberOfLines = 0
            label.textAlignment = .center
            return label
            
        }()
        
      
        
        labelStackView = UIStackView(arrangedSubviews: [UILabel1,UILabel2])
        labelStackView.axis = .vertical
        labelStackView.distribution = .fillEqually
        labelStackView.spacing = 10
        
        view.addSubview(labelStackView)
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            labelStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            labelStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])

        
        
        
    }
    
    func setupEmail()  {
        
        var emailLabel  : UILabel = {
            var label : UILabel = UILabel()
            label.text = "Email Address"
            label.textColor = .black
            label.font = UIFont.boldSystemFont(ofSize: 15)
            label.numberOfLines = 0
            label.textAlignment = .left
            return label
            
        }()
        
        var emailTextfield : UITextField = {
            var textField : UITextField = UITextField()
            textField.placeholder = "xyz@gmail.com"
            textField.textColor = .black
            textField.backgroundColor = .systemGray6
            textField.borderStyle = .roundedRect
            
            return textField
            
        }()
        

        emailStackView = UIStackView(arrangedSubviews: [emailLabel,emailTextfield])
        emailStackView.axis = .vertical
        emailStackView.spacing = 0
        emailStackView.distribution = .fillEqually
        
        view.addSubview(emailStackView)
        emailStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailStackView.topAnchor.constraint(equalTo: labelStackView.bottomAnchor, constant: 50),
            emailStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            emailStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        
        
        ])
        
    }
    
    
    func setupPassword()  {
        
        var passwordLabel  : UILabel = {
            var label : UILabel = UILabel()
            label.text = "Password"
            label.textColor = .black
            label.font = UIFont.boldSystemFont(ofSize: 15)
            label.numberOfLines = 0
            label.textAlignment = .left
            return label
            
        }()
        
        var passwordTextfield : UITextField = {
            var textField : UITextField = UITextField()
            
            textField.placeholder = "Enter your password"
            textField.isSecureTextEntry = true
            textField.textColor = .black
            textField.backgroundColor = .systemGray6
            textField.borderStyle = .roundedRect
            
            
            return textField
            
            
        }()
        
        
        var Label  : UILabel = {
            var label : UILabel = UILabel()
            label.text = "Recovery Password"
            label.textColor = .gray
            label.font = UIFont.boldSystemFont(ofSize: 14)
            label.numberOfLines = 0
            label.textAlignment = .right
            return label
            
        }()
        
        
        
        passwordStackView = UIStackView(arrangedSubviews: [passwordLabel,passwordTextfield,Label])
        passwordStackView.axis = .vertical
        passwordStackView.distribution = .fillEqually
        passwordStackView.spacing = 0
        
        view.addSubview(passwordStackView)
        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 10),
            passwordStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            passwordStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
            
        
        ])
        
        
        
    }
    
    func SetupSignIn()  {
        var signInButton : UIButton = {
            var button : UIButton = UIButton()
            button.setTitle("Sign In", for: .normal)
            button.backgroundColor = .systemGreen
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = 10
            return button
            
            
        }()
        
        var signInWithAppleButton : UIButton = {
            var button : UIButton = UIButton()
            button.setTitle("Sign In With Apple", for: .normal)
            button.backgroundColor = .systemGray4
            button.setTitleColor(.black, for: .normal)
            button.layer.cornerRadius = 10
            return button
            
        }()
        var signInWithGoogleButton : UIButton = {
            var button : UIButton = UIButton()
            button.setTitle("Sign In With Google", for: .normal)
            button.backgroundColor = .systemGray4
            button.setTitleColor(.black, for: .normal)
            button.layer.cornerRadius = 10
            return button
            
        }()
        
        
        signInStackView = UIStackView(arrangedSubviews: [signInButton,signInWithAppleButton,signInWithGoogleButton])
        signInStackView.axis = .vertical
        signInStackView.distribution = .fillEqually
        signInStackView.spacing = 10
        
        view.addSubview(signInStackView)
        signInStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInStackView.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant: 30),
            signInStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            signInStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        
        ])
        
    }
    
    func setupCreateAccount()  {
        var labell : UILabel = {
            var label : UILabel = UILabel()
            label.text = "New User ?"
            label.textColor = .black
            label.font = UIFont.boldSystemFont(ofSize: 15)
            label.numberOfLines = 0
            label.textAlignment = .center
            return label
            
        }()
        
        var createAccountButton : UIButton = {
            var button : UIButton = UIButton()
            button.setTitle("Create Account", for: .normal)
            button.backgroundColor = .white
            button.setTitleColor(.systemGreen, for: .normal)
            button.layer.cornerRadius = 10
            return button
            
        }()
        
        createAccountStackView = UIStackView(arrangedSubviews: [labell,createAccountButton])
        createAccountStackView.axis = .horizontal
        createAccountStackView.distribution = .fillEqually
        createAccountStackView.spacing = 0
        
        view.addSubview(createAccountStackView)
        createAccountStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createAccountStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:-70 ),
            createAccountStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            createAccountStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        
        ])
    }
    

    
//    


}
//
//#Preview(""){
//    LoginPageVC()
//
//}
