//
//  ControllerLogin.swift
//  Project1
//
//  Created by Алексей on 2/23/21.
//

import UIKit

class ControllerLogin: UIViewController {
    //MARK: Outlet
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //MARK: Func Login
    @IBAction func login(_ sender: Any) {
        let userEmail = login.text
        let userPassword = pass.text
        let userEmailUD = UserDefaults.standard.string(forKey: KeyDefaults.keyUserEmail)
        let userPasswordUD = UserDefaults.standard.string(forKey: KeyDefaults.keyFirstPassword)
        
        if (userEmailUD == userEmail)
        {
            if (userPasswordUD == userPassword)
            {
                //MARK: Open ViewController TabBar2
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "tbMain") as! TabBarController
                newViewController.selectedIndex = 1
                newViewController.modalPresentationStyle = .fullScreen
                present(newViewController, animated: true, completion: nil)
                print("true")
            } else {
                
                let alertN1 = UIAlertController(title: "Ошибка", message: "Не правильно введен пароль", preferredStyle: .alert)
                let alertActN1 = UIAlertAction(title: "Ок", style: .cancel) { (alertact) in}
                alertN1.addAction(alertActN1)
                self.present(alertN1, animated: true, completion:{
                //  self.login.text?.removeAll()
                    self.pass.text?.removeAll()
                })
                print("folse")
            }
        }
        
        if (login.text?.count == 0) && (pass.text?.count == 0) {
            let alertN2 = UIAlertController(title: "Ошибка", message: "Заполнити логин и пароль", preferredStyle: .alert)
            let alertActN2 = UIAlertAction(title: "Ок", style: .cancel) { (alertPrezent) in}
            alertN2.addAction(alertActN2)
            self.present(alertN2, animated: true)
            print("folse")
            
        }
    }
}
