//
//  CustomTextFields.swift
//  LoginPage
//
//  Created by Burak Gül on 20.06.2023.
//

import UIKit

class CustomTextFields: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(isSecureText : Bool,textColor : UIColor) {
        self.init(frame: .zero)
        set(isSecureText: isSecureText, textColor: textColor)
    }
    

    func configure()  {
        borderStyle = .none
        
        backgroundColor = .systemGray5
    }
    
    func set(isSecureText : Bool,textColor : UIColor)  {
        isSecureTextEntry = isSecureText
        self.textColor = textColor
    }
}
