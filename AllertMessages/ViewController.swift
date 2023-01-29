//
//  ViewController.swift
//  AllertMessages
//
//  Created by SahilMehdiyev on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpClick(_ sender: Any) {
        
        if emailTextField.text == ""{
            //email girilmemis!!
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Email girilmemis")
            
        }else if passwordTextField.text == ""{
            //parola girilmemis!
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parolalar girilmemis!")
            
        }else if passwordTextField.text != password2TextField.text{
            // girilen parola uyusmuyor!
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parolalar uyusmuyor!")
            }
            
        }else{
            //Basarili sekilde Kayit edildi
            alertOlustur(titleGirdisi: "Tebrikler", messageGirdisi: "Kullanici olusturuldu.")
        }
        
    }
    
func alertOlustur(titleGirdisi:String ,messageGirdisi: String){
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //Ok Button`una tiklaninca olacaklar
            print("Ok buttona tiklandi")
            
        }
        
        uyariMesaji.addAction(okButton)
    
       
    self.present(uyariMesaji, animated: true, completion: nil)
    }
    




