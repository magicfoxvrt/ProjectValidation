//
//  ControllerRegistration.swift
//  Project1
//
//  Created by Алексей on 2/22/21.
//

import UIKit

class ControllerRegistration: UIViewController {
    //MARK: Outlet UILable
    @IBOutlet weak var firstNameL: UILabel!
    @IBOutlet weak var lastNameL: UILabel!
    @IBOutlet weak var userEmailL: UILabel!
    @IBOutlet weak var firstPasswordL: UILabel!
    @IBOutlet weak var lastPasswordL: UILabel!
    //MARK: Outlet UITextField
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var userEmailTF: UITextField!
    @IBOutlet weak var firstPasswordTF: UITextField!
    @IBOutlet weak var lastPasswordTF: UITextField!
    //MARK: Outlet UIimageView
    @IBOutlet weak var imageIV: UIImageView!
    @IBOutlet weak var firstNameIV: UIImageView!
    @IBOutlet weak var lastNameIV: UIImageView!
    @IBOutlet weak var userEmailIV: UIImageView!
    @IBOutlet weak var firstPasswordIV: UIImageView!
    @IBOutlet weak var lastPasswordIV: UIImageView!
    //MARK: Outlet UIButtlon
    @IBOutlet weak var registrationB: UIButton!
    //MARK: Check Button
    var checkBool1 = false
    var checkBool2 = false
    var checkBool3 = false
    var checkBool4 = false
    var checkBool5 = false
    //MARK: Check IMG
    var checkImage = false
    //MARK: UserDefauls
    let defaults = UserDefaults.standard
    
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        //Button
        registrationB.isEnabled = false
        // Tap View
        tapImage()
        //IMG
        imageIV.cornerRadiusAndMod()
    }
    //MARK: checkCompact
    func checkCompact(checkF: CheckValidEnum ){
    switch checkF {
    //firstname
    case .checkFirsNameTFTrue:
        firstNameTF.layer.borderWidth = 2
        firstNameTF.layer.borderColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        firstNameIV.image = UIImage(named: "icony")
    case .checkFirsNameTFFalse:
        firstNameTF.layer.borderWidth = 2
        firstNameTF.layer.borderColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        firstNameIV.image = UIImage(named: "iconx")
    case .checkFirsNameTFNil:
        firstNameTF.layer.borderWidth = 2
        firstNameTF.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        firstNameIV.image = nil
    //llastname
    case .checkLastNameTFTrue:
        lastNameTF.layer.borderWidth = 2
        lastNameTF.layer.borderColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        lastNameIV.image = UIImage(named: "icony")
    case .checkLastNameTFFalse:
        lastNameTF.layer.borderWidth = 2
        lastNameTF.layer.borderColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        lastNameIV.image = UIImage(named: "iconx")
    case .checkLastNameTFNil:
        lastNameTF.layer.borderWidth = 2
        lastNameTF.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        lastNameIV.image = nil
    //email
    case .checkEmailTFTrue:
        userEmailTF.layer.borderWidth = 2
        userEmailTF.layer.borderColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        userEmailIV.image = UIImage(named: "icony")
    case .checkEmailTFFalse:
        userEmailTF.layer.borderWidth = 2
        userEmailTF.layer.borderColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        userEmailIV.image = UIImage(named: "iconx")
    case .checkEmailTFNil:
        userEmailTF.layer.borderWidth = 2
        userEmailTF.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        userEmailIV.image = nil
    //firstpas
    case .checkFirstPassTFTrue:
        firstPasswordTF.layer.borderWidth = 2
        firstPasswordTF.layer.borderColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        firstPasswordIV.image = UIImage(named: "icony")
    case .checkFirstPassTFFalse:
        firstPasswordTF.layer.borderWidth = 2
        firstPasswordTF.layer.borderColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        firstPasswordIV.image = UIImage(named: "iconx")
    case .checkFirstPassTFNil:
        firstPasswordTF.layer.borderWidth = 2
        firstPasswordTF.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        firstPasswordIV.image = nil
    //lastpas
    case .checkLastPassTFTrue:
        lastPasswordTF.layer.borderWidth = 2
        lastPasswordTF.layer.borderColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        lastPasswordIV.image = UIImage(named: "icony")
    case .checkLastPassTFFalse:
        lastPasswordTF.layer.borderWidth = 2
        lastPasswordTF.layer.borderColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        lastPasswordIV.image = UIImage(named: "iconx")
    case .checkLastPassTFNil:
        lastPasswordTF.layer.borderWidth = 2
        lastPasswordTF.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        lastPasswordIV.image = nil
    }
    }
    //MARK: Tap IMG
    func tapImage(){
        let tapGesture = UITapGestureRecognizer(target: self, action:#selector(imageTapped(tapGestureRecognizer:)))
        imageIV.isUserInteractionEnabled = true
        imageIV.addGestureRecognizer(tapGesture)
    }
    
    //MARK: PhotoTarget
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer){
        openPhoto()
        print("test")
    }
    //MARK: Check button
    func check() {
        if checkBool1 && checkBool2 && checkBool3 && checkBool4 && checkBool5 {
            registrationB.isEnabled = true
        } else{
            registrationB.isEnabled = false
        }
        return
    }
    //MARK: button registration
    @IBAction func registrationSave(_ sender: Any) {
        let firstName = firstNameTF.text!
        let lastName = lastNameTF.text!
        let userEmail = userEmailTF.text!
        let firstPassword = firstPasswordTF.text!
//        let img = imageIV.image
        //MARK: check IMG
        if !checkImage {
            
            let alertN3 = UIAlertController(title: "!", message: "IMG", preferredStyle: .alert)
            let alertActN3 = UIAlertAction(title: "Ок", style: .cancel) { (alertPrezent) in}
            alertN3.addAction(alertActN3)
            self.present(alertN3, animated: true, completion:{
                self.checkImage = true
                         })
        
        }
        //MARK: save Userdf
        if !firstName.isEmpty && !lastName.isEmpty && !userEmail.isEmpty && !firstPassword.isEmpty {
            defaults.set(firstName, forKey: KeyDefaults.keyFirstName)
            defaults.set(lastName, forKey: KeyDefaults.keyLastName)
            defaults.set(userEmail, forKey: KeyDefaults.keyUserEmail)
            defaults.set(firstPassword, forKey: KeyDefaults.keyFirstPassword)
//            defaults.set(img, forKey: KeyDefaults.keyimage)
        }
        dismiss(animated: true)
    }

    //MARK: CheckFirstName
    @IBAction func checkFirstName(_ sender: Any) {
        let text = firstNameTF.text ?? ""
        if text.ValidFirstName() {
            checkBool1 = true
            checkCompact(checkF: CheckValidEnum.checkFirsNameTFTrue)
            check()
        } else {
            checkBool1 = false
            checkCompact(checkF: CheckValidEnum.checkFirsNameTFFalse)
            check()
        }
        if text == "" {
            checkBool1 = false
            checkCompact(checkF: CheckValidEnum.checkFirsNameTFNil)
            check()
        }
    }
    //MARK: CheckLastName
    @IBAction func checkLastName(_ sender: Any) {
        let text = lastNameTF.text ?? ""
        if text.ValidLastName() {
            checkBool2 = true
            checkCompact(checkF: CheckValidEnum.checkLastNameTFTrue)
            check()
        } else {
            checkBool2 = false
            checkCompact(checkF: CheckValidEnum.checkLastNameTFFalse)
            check()
        }
        if text == "" {
            checkBool2 = false
            checkCompact(checkF: CheckValidEnum.checkLastNameTFNil)
            check()
        }
    }
    //MARK: CheckUserEmail
    @IBAction func checkUserEmail(_ sender: Any) {
        let text = userEmailTF.text ?? ""
        if text.ValidUserEmail() {
            checkBool3 = true
            checkCompact(checkF: CheckValidEnum.checkEmailTFTrue)
            check()
        } else {
            checkBool3 = false
            checkCompact(checkF: CheckValidEnum.checkEmailTFFalse)
            check()
        }
        if text == "" {
            checkBool3 = false
            checkCompact(checkF: CheckValidEnum.checkEmailTFNil)
            check()
        }
    }
    //MARK: CheckFirstPassword
    @IBAction func checkFirstPassword(_ sender: Any) {
        let text = firstPasswordTF.text ?? ""
        if text.ValidFirstPassword() {
            checkBool4 = true
            checkCompact(checkF: CheckValidEnum.checkFirstPassTFTrue)
            check()
        } else {
            checkBool4 = false
            checkCompact(checkF: CheckValidEnum.checkFirstPassTFFalse)
            check()
        }
        if text == "" {
            checkBool4 = false
            checkCompact(checkF: CheckValidEnum.checkFirstPassTFNil)
            check()
        }
    }
    //MARK: CheckLastPassword
    @IBAction func checkLastPassword(_ sender: Any) {
        let text = lastPasswordTF.text
        if text == firstPasswordTF.text {
            checkBool5 = true
            checkCompact(checkF: CheckValidEnum.checkLastPassTFTrue)
            check()
        } else {
            checkBool5 = false
            checkCompact(checkF: CheckValidEnum.checkLastPassTFFalse)
            check()
        }
        if text == "" {
            checkBool5 = false
            checkCompact(checkF: CheckValidEnum.checkLastPassTFNil)
            check()
        }
    }
    
}
//MARK: KeyDefaults
struct KeyDefaults {
    static let keyFirstName = "firstName"
    static let keyLastName = "lastName"
    static let keyUserEmail = "userEmail"
    static let keyFirstPassword = "firstPassword"
//    static let keyimage = "img"
}
//MARK: Func compact
enum  CheckValidEnum {
    //FirsName
    case checkFirsNameTFTrue
    case checkFirsNameTFFalse
    case checkFirsNameTFNil
    //LastName
    case checkLastNameTFTrue
    case checkLastNameTFFalse
    case checkLastNameTFNil
    //Email
    case checkEmailTFTrue
    case checkEmailTFFalse
    case checkEmailTFNil
    //FirstPass
    case checkFirstPassTFTrue
    case checkFirstPassTFFalse
    case checkFirstPassTFNil
    //LastPass
    case checkLastPassTFTrue
    case checkLastPassTFFalse
    case checkLastPassTFNil
}
//MARK: Extension Validation
extension String {
    func ValidFirstName() -> Bool {
        let inputRegEx = "^[a-zA-Z\\_]{2,25}$"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    func ValidLastName() -> Bool {
        let inputRegEx = "^[a-zA-Z\\_]{2,25}$"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    func ValidUserEmail() -> Bool {
        let inputRegEx = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[A-Za-z]{2,64}"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    func ValidFirstPassword() -> Bool {
        let inputRegEx = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()-_+={}?>.<,:;~`']{8,}$"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
}
//MARK: Extension Open Photo
extension ControllerRegistration: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    func openPhoto(){
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .savedPhotosAlbum
//            picker.allowsEditing = true
            present(picker, animated: true)
        }
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[UIImagePickerController.InfoKey : Any]) {
        if let img = info [.originalImage] as? UIImage {
            imageIV.image = img
            checkImage = true
        }
        dismiss(animated: true)
    }
}
//MARK: Extension IMG
extension UIImageView {
    func cornerRadiusAndMod(){
    self.layer.cornerRadius = self.frame.height/2
    self.contentMode = .scaleAspectFill
    }
}


