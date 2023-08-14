//
//  LoginPageVC.swift
//  LoginPage2
//
//  Created by Burak Gül on 7.08.2023.
//

import UIKit


class LoginPageVC: UIViewController {
    
    var UILabel1   = UILabel()
    var UILabel2   = UILabel()
    var emailLabel = UILabel()
    var emailTextfield = UITextField()
    var passwordLabel = UILabel()
    var passwordTextfield = UITextField()
    var showHideButton = UIButton()
    
    var recoveryLabel = UILabel()
    var signInButton = UIButton()
    var signInWithAppleButton = UIButton()
    var signInWithGoogleButton = UIButton()
    var newUserLabel = UILabel()
    var createAccountButton  = UIButton()
    var labelStackView = UIStackView()
    var emailStackView = UIStackView()
    var passwordStackView  = UIStackView()
    var signInStackView = UIStackView()
    var createAccountStackView = UIStackView()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        makeLabelStackView()
        makeEmailStackView()
        makePasswordStackView()
        makesSignInStackView()
        makeCreateAccountStackView()
        
        
        
        
        
    }

    
    
    //MARK: - SetupFunctions
    
    func makeLabelStackView() {
        UILabel1.text = "Hello Again !"
        UILabel1.textColor = .purple
        UILabel1.font = UIFont.boldSystemFont(ofSize: 30)
        UILabel1.numberOfLines = 0
        UILabel1.textAlignment = .center
        
        UILabel2.text = "Fill Your Details Or Continue With Social Media"
        UILabel2.textColor = .gray
        UILabel2.font = UIFont.boldSystemFont(ofSize: 20)
        UILabel2.numberOfLines = 0
        UILabel2.textAlignment = .center
        
        labelStackView.addArrangedSubview(UILabel1)
        labelStackView.addArrangedSubview(UILabel2)
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
    
    func makeEmailStackView() {
        emailLabel.text = "Email Address"
        emailLabel.textColor = .black
        emailLabel.font = UIFont.boldSystemFont(ofSize: 15)
        emailLabel.numberOfLines = 0
        emailLabel.textAlignment = .left
        
        emailTextfield.placeholder = "xyz@gmail.com"
        emailTextfield.textColor = .black
        emailTextfield.backgroundColor = .systemGray6
        emailTextfield.borderStyle = .roundedRect
        
        emailStackView.addArrangedSubview(emailLabel)
        emailStackView.addArrangedSubview(emailTextfield)
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
    
    func makePasswordStackView() {

        showHideButton.configuration = .plain()
        showHideButton.setImage(UIImage(systemName:"eye.circle.fill"), for: .selected)
        showHideButton.setImage(UIImage(systemName:"eye.slash.fill"), for: .normal)
        
        
        showHideButton.configuration?.buttonSize = .small
        showHideButton.configuration?.imagePadding = 0
        showHideButton.configuration?.imagePlacement = .trailing
        showHideButton.configuration?.baseForegroundColor = .systemGray2

        
        
        showHideButton.addTarget(self, action: #selector(showHideButtonTapped), for: .touchUpInside)
        
        passwordLabel.text = "Password"
        passwordLabel.textColor = .systemGray2
        passwordLabel.font = UIFont.boldSystemFont(ofSize: 15)
        passwordLabel.numberOfLines = 0
        passwordLabel.textAlignment = .left
        
        passwordTextfield.text = "iamburakgul"
        passwordTextfield.placeholder = "Enter your password"
        passwordTextfield.isSecureTextEntry = true
        passwordTextfield.textColor = .black
        passwordTextfield.backgroundColor = .systemGray6
        passwordTextfield.borderStyle = .roundedRect
        
        passwordTextfield.addSubview(showHideButton)
        showHideButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            showHideButton.topAnchor.constraint(equalTo: passwordTextfield.topAnchor, constant: 0),
            showHideButton.bottomAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 0),
            showHideButton.trailingAnchor.constraint(equalTo: passwordTextfield.trailingAnchor, constant: 0),
            showHideButton.widthAnchor.constraint(equalToConstant: 50)
        
        ])
        
        passwordStackView.addArrangedSubview(passwordLabel)
        passwordStackView.addArrangedSubview(passwordTextfield)
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
    
    
    func makesSignInStackView() {
        
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.backgroundColor = .systemGreen
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.layer.cornerRadius = 10
        
        
        signInWithAppleButton.configuration = .plain()
        
        signInWithAppleButton.setTitle("Sign In With Apple", for: .normal)
        signInWithAppleButton.setTitleColor(.black, for: .normal)
        signInWithAppleButton.setImage(UIImage(systemName: "apple.logo"), for: .normal)
        signInWithAppleButton.configuration?.imagePadding = 10
        signInWithAppleButton.configuration?.imagePlacement = .leading
        signInWithAppleButton.tintColor = .black
        signInWithAppleButton.backgroundColor = .systemGray4
        signInWithAppleButton.layer.cornerRadius = 10
        
        signInWithGoogleButton.configuration = .plain()
        signInWithGoogleButton.setTitle("Sign In With Google", for: .normal)
        signInWithGoogleButton.setImage(UIImage(systemName: "bolt.fill"), for: .normal)
//        var googleİmage = UIImage(named: "google")
        signInWithGoogleButton.configuration?.imagePadding = 10
        signInWithGoogleButton.configuration?.imagePlacement = .leading
        signInWithGoogleButton.backgroundColor = .systemGray4
        
        signInWithGoogleButton.setTitleColor(.black, for: .normal)
        signInWithGoogleButton.layer.cornerRadius = 10
        
        
        signInStackView.addArrangedSubview(signInButton)
        signInStackView.addArrangedSubview(signInWithAppleButton)
        signInStackView.addArrangedSubview(signInWithGoogleButton)
        signInStackView.axis = .vertical
        signInStackView.distribution = .fillEqually
        signInStackView.spacing = 20
        
        view.addSubview(signInStackView)
        signInStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInStackView.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant: 60),
            signInStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            signInStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
    
    func makeCreateAccountStackView() {
        newUserLabel.text = "New User ?"
        newUserLabel.textColor = .black
        newUserLabel.font = UIFont.boldSystemFont(ofSize: 15)
        newUserLabel.numberOfLines = 0
        newUserLabel.textAlignment = .center
        
        
        createAccountButton.setTitle("Create Account", for: .normal)
        createAccountButton.backgroundColor = .white
        createAccountButton.setTitleColor(.systemGreen, for: .normal)
        createAccountButton.layer.cornerRadius = 10
        
        createAccountStackView.addArrangedSubview(newUserLabel)
        createAccountStackView.addArrangedSubview(createAccountButton)
        createAccountStackView.axis = .horizontal
        createAccountStackView.distribution = .fillEqually
        createAccountStackView.spacing = 10
        
        view.addSubview(createAccountStackView)
        createAccountStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createAccountStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -70),
            createAccountStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            createAccountStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        
        ])
    }
    
    
    @objc private func showHideButtonTapped() {
            passwordTextfield.isSecureTextEntry.toggle()
            showHideButton.isSelected.toggle()
      }
    
    
    
}

//class LoginPageVC: UIViewController  {
//
//    
//    var labelStackView: UIStackView!
//    var emailStackView: UIStackView!
//    var passwordStackView : UIStackView!
//    var signInStackView : UIStackView!
//    var createAccountStackView : UIStackView!
//
//
//
//    
//
//    
//
//
//    
//    
//    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        setupLabel()
//        setupEmail()
//        setupPassword()
//        SetupSignIn()
//        setupCreateAccount()
//
//
//   
//    }
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    //MARK: - FUNCTİONS
//    
//    
//    func setupLabel()  {
//        
//        var UILabel1  : UILabel = {
//            var label : UILabel = UILabel()
//            label.text = "Hello Again !"
//            label.textColor = .purple
//            label.font = UIFont.boldSystemFont(ofSize: 30)
//            label.numberOfLines = 0
//            label.textAlignment = .center
//            return label
//            
//        }()
//        
//         var UILabel2  : UILabel = {
//            var label : UILabel = UILabel()
//            label.text = "Fill Your Details Or Continue With Social Media"
//            label.textColor = .gray
//            label.font = UIFont.boldSystemFont(ofSize: 20)
//            label.numberOfLines = 0
//            label.textAlignment = .center
//            return label
//            
//        }()
//        
//      
//        
//        labelStackView = UIStackView(arrangedSubviews: [UILabel1,UILabel2])
//        labelStackView.axis = .vertical
//        labelStackView.distribution = .fillEqually
//        labelStackView.spacing = 10
//        
//        view.addSubview(labelStackView)
//        labelStackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            labelStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
//            labelStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
//            labelStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
//        ])
//
//        
//        
//        
//    }
//    
//    func setupEmail()  {
//        
//        var emailLabel  : UILabel = {
//            var label : UILabel = UILabel()
//            label.text = "Email Address"
//            label.textColor = .black
//            label.font = UIFont.boldSystemFont(ofSize: 15)
//            label.numberOfLines = 0
//            label.textAlignment = .left
//            return label
//            
//        }()
//        
//        var emailTextfield : UITextField = {
//            var textField : UITextField = UITextField()
//            textField.placeholder = "burak"
//            textField.textColor = .black
//            textField.backgroundColor = .systemGray6
//            textField.borderStyle = .roundedRect
//            
//            return textField
//            
//        }()
//        
//
//        emailStackView = UIStackView(arrangedSubviews: [emailLabel,emailTextfield])
//        emailStackView.axis = .vertical
//        emailStackView.spacing = 0
//        emailStackView.distribution = .fillEqually
//        
//        view.addSubview(emailStackView)
//        emailStackView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            emailStackView.topAnchor.constraint(equalTo: labelStackView.bottomAnchor, constant: 50),
//            emailStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
//            emailStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
//        
//        
//        ])
//        
//    }
//    
//    
//    func setupPassword()  {
//        
//        var passwordLabel  : UILabel = {
//            var label : UILabel = UILabel()
//            label.text = "Password"
//            label.textColor = .black
//            label.font = UIFont.boldSystemFont(ofSize: 15)
//            label.numberOfLines = 0
//            label.textAlignment = .left
//            return label
//            
//        }()
//        
//        var passwordTextfield : UITextField = {
//            var textField : UITextField = UITextField()
//            
//            textField.placeholder = "Enter your password"
//            textField.isSecureTextEntry = true
//            textField.textColor = .black
//            textField.backgroundColor = .systemGray6
//            textField.borderStyle = .roundedRect
//            
//            
//            return textField
//            
//            
//        }()
//        
//        
//        var Label  : UILabel = {
//            var label : UILabel = UILabel()
//            label.text = "Recovery Password"
//            label.textColor = .gray
//            label.font = UIFont.boldSystemFont(ofSize: 14)
//            label.numberOfLines = 0
//            label.textAlignment = .right
//            return label
//            
//        }()
//        
//        
//        
//        passwordStackView = UIStackView(arrangedSubviews: [passwordLabel,passwordTextfield,Label])
//        passwordStackView.axis = .vertical
//        passwordStackView.distribution = .fillEqually
//        passwordStackView.spacing = 0
//        
//        view.addSubview(passwordStackView)
//        passwordStackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        
//        NSLayoutConstraint.activate([
//            passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 10),
//            passwordStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
//            passwordStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
//            
//        
//        ])
//        
//        
//        
//    }
//    
//    func SetupSignIn()  {
//        var signInButton : UIButton = {
//            var button : UIButton = UIButton()
//            button.setTitle("Sign In", for: .normal)
//            button.backgroundColor = .systemGreen
//            button.setTitleColor(.white, for: .normal)
//            button.layer.cornerRadius = 10
//            button.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
//            return button
//            
//            
//            
//        }()
//        
//        
//        var signInWithAppleButton : UIButton = {
//            var button : UIButton = UIButton()
//            button.setTitle("Sign In With Apple", for: .normal)
//            button.backgroundColor = .systemGray4
//            button.setTitleColor(.black, for: .normal)
//            button.layer.cornerRadius = 10
//            return button
//            
//        }()
//        var signInWithGoogleButton : UIButton = {
//            var button : UIButton = UIButton()
//            button.setTitle("Sign In With Google", for: .normal)
//            button.backgroundColor = .systemGray4
//            button.setTitleColor(.black, for: .normal)
//            button.layer.cornerRadius = 10
//            return button
//            
//        }()
//        
//        
//        signInStackView = UIStackView(arrangedSubviews: [signInButton,signInWithAppleButton,signInWithGoogleButton])
//        signInStackView.axis = .vertical
//        signInStackView.distribution = .fillEqually
//        signInStackView.spacing = 10
//        
//        view.addSubview(signInStackView)
//        signInStackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            signInStackView.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant: 30),
//            signInStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
//            signInStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
//        
//        ])
//        
//    }
//    
//    @objc func buttonTouched() {
//        print("burakk")
//    }
//    
//    func setupCreateAccount()  {
//        var labell : UILabel = {
//            var label : UILabel = UILabel()
//            label.text = "New User ?"
//            label.textColor = .black
//            label.font = UIFont.boldSystemFont(ofSize: 15)
//            label.numberOfLines = 0
//            label.textAlignment = .center
//            return label
//            
//        }()
//        
//        var createAccountButton : UIButton = {
//            var button : UIButton = UIButton()
//            button.setTitle("Create Account", for: .normal)
//            button.backgroundColor = .white
//            button.setTitleColor(.systemGreen, for: .normal)
//            button.layer.cornerRadius = 10
//            return button
//            
//        }()
//        
//        createAccountStackView = UIStackView(arrangedSubviews: [labell,createAccountButton])
//        createAccountStackView.axis = .horizontal
//        createAccountStackView.distribution = .fillEqually
//        createAccountStackView.spacing = 0
//        
//        view.addSubview(createAccountStackView)
//        createAccountStackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            createAccountStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:-70 ),
//            createAccountStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
//            createAccountStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
//        
//        ])
//    }
//    
//
//    
////    
//
//
//}

#Preview(""){
    LoginPageVC()

}
