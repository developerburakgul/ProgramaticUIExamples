//
//  LoginPageVC.swift
//  LoginPage2
//
//  Created by Burak Gül on 7.08.2023.
//

import UIKit

class LoginPageVC: UIViewController  {

    var uiLabel1 : UILabel = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUILabel1()

   
    }
    
    func configureUILabel1()  {
        
        uiLabel1.text = "Hello Again !"
        uiLabel1.textColor = .purple
        uiLabel1.font = UIFont.boldSystemFont(ofSize: 40)
        
        view.addSubview(uiLabel1)
        uiLabel1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            uiLabel1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            uiLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            uiLabel1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07)
            
            
            
        
        
        ])
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

#Preview(""){
    LoginPageVC()
    
}
