//
//  HomePageVC.swift
//  ProgramaticUI
//
//  Created by Burak Gül on 20.06.2023.
//

import UIKit

class HomePageVC: UIViewController {
    
    
    lazy var userNameTextField : UITextField = {
        let textField = UITextField()
        
        textField.borderStyle = .none
        textField.textColor = .red
        textField.backgroundColor = .systemGray5
        textField.keyboardType = .emailAddress
        textField.placeholder = "Enter username"
        textField.textAlignment = .center
        return textField
    }()
    
    lazy var passwordTextField : UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.textColor = .red
        textField.backgroundColor = .systemGray5
        textField.isSecureTextEntry = true
        textField.placeholder = "Enter password"
        textField.textAlignment = .center
        
        return textField
    }()
    
    
   lazy var loginButton : UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        button.setTitle("Login Button", for: .normal)
        return button
    }()
    
    lazy var homePageStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [userNameTextField,passwordTextField,loginButton])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
       
    }
    
    //MARK: - Helpers
    func setupUI() {
        view.backgroundColor = .systemBlue
        /*
        configureUserNameTextField()
        configurePasswordTextField()
        configureLoginButton()
         */
        configureStackView()
    }
    
    func configureStackView()  {
        view.addSubview(homePageStackView)
        homePageStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            homePageStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            homePageStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            homePageStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            homePageStackView.heightAnchor.constraint(equalToConstant: view.frame.height/2)
            
        ])
    }
    
    
    
    
    
    
    
    
    
    /*
    func configureUserNameTextField(){
        view.addSubview(userNameTextField)
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            userNameTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
    
    func configurePasswordTextField(){
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30)
            
        ])
        
    }
    
    func configureLoginButton(){
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            loginButton.heightAnchor.constraint(equalToConstant: 30)
        
        ])
        
    }
     */
    

   

}

