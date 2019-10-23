//
//  LoginViewController.swift
//  MemoRire
//
//  Created by Dos Santos Almeida Micael on 23/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController{
    
    @IBOutlet weak var NameText: UITextField!
    
    @IBOutlet weak var MdpText: UITextField!
    @IBOutlet weak var NameBtn: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let defaults = UserDefaults.standard
        
        defaults.set("Mika", forKey: "Nom")
        defaults.set(1234, forKey: "MotDePasse")
        
        let dict = ["Nom": "Mika", "Mot de passe":"1234"]
        defaults.set(dict, forKey: "SavedDictionary")
        
        defaults.set(NameText.text, forKey: "Nom")
        print(NameText.text)
        
        defaults.set(MdpText.text, forKey: "Mot de passe")
        
        print(MdpText.text)
    }
    
    @IBAction func ButtonPressed(_ sender: Any) {
        print(MdpText.text)
        print(NameText.text)
    }
    
}
