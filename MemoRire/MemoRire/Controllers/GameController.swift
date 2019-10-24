//
//  Game.swift
//  MemoRire
//
//  Created by Du Halgouet Melec on 24/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class GameController: UIViewController {

    
    @IBOutlet weak var Bouton1:
        UIButton!
    
    @IBOutlet weak var Bouton2:
    UIButton!
    
    @IBOutlet weak var Bouton3:
    UIButton!
    
    @IBOutlet weak var Bouton4:
    UIButton!
    
    @IBOutlet weak var Bouton5:
    UIButton!
    
    @IBOutlet weak var Bouton6:
    UIButton!
    
    @IBOutlet weak var Bouton7:
    UIButton!
    
    @IBOutlet weak var Bouton8:
    UIButton!
    
    @IBOutlet weak var Bouton9:
    UIButton!
    
    @IBOutlet weak var Bouton10: UIButton!
    
    @IBAction func actionBouton1(_ sender: UIButton) {
          sender.setBackgroundImage(UIImage(named: "1"), for: .normal)
        print("yo")
    }
    
    
    @IBAction func myImageButton(_ sender: UIButton, tag: String) {
        sender.setBackgroundImage(UIImage(named: tag), for: .normal)
        print("yoyo")
    }
    
    func assignTag(){
            Bouton1.tag=1
        Bouton1.addTarget(self,action:#selector(buttonClicked),for:.touchUpInside)
            
            Bouton2.tag=2
        Bouton2.addTarget(self,action:#selector(buttonClicked),
                                  for:.touchUpInside)
            Bouton3.tag=3
        Bouton3.addTarget(self,action:#selector(buttonClicked),
                                  for:.touchUpInside)
        
            Bouton4.tag=4
            Bouton4.addTarget(self,action:#selector(buttonClicked),for:.touchUpInside)
        
            Bouton5.tag=5
            Bouton5.addTarget(self,action:#selector(buttonClicked),for:.touchUpInside)
        
            Bouton6.tag=6
            Bouton6.addTarget(self,action:#selector(buttonClicked),for:.touchUpInside)
        
            Bouton7.tag=7
            Bouton1.addTarget(self,action:#selector(buttonClicked),for:.touchUpInside)
        
            Bouton8.tag=8
        Bouton8.addTarget(self,action:#selector(buttonClicked),for:.touchUpInside)
        
            Bouton9.tag=9
            Bouton9.addTarget(self,action:#selector(buttonClicked),for:.touchUpInside)
        
            Bouton10.tag=10
            Bouton10.addTarget(self,action:#selector(buttonClicked),for:.touchUpInside)
            
        
    }
    
//    func assignImage(){
//        let arrayImageId = ["1","1","2","2","3","3","4","4","5","5"]
//        print("arrayImageId " + arrayImageId[2])
//
//        while (arrayImageId.count) >1{
//
//        }
//    }
    
    @objc func buttonClicked(sender:UIButton)
    {
        switch sender.tag
        {
            case 1: print("1")     //when Button1 is clicked...
            myImageButton(sender, tag:"1")
                break
            case 2: print("2")     //when Button2 is clicked...
            myImageButton(sender, tag:"2")
                break
            case 3: print("3")     //when Button3 is clicked...
            myImageButton(sender, tag:"3")
                break
            default: print("Other...")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignTag()
        //assignImage()
        
        
        
        //myImageButton(Bouton1)
        
        // Do any additional setup after loading the view.
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
