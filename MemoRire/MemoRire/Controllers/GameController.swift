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
    
    @IBOutlet weak var Bouton10:
    UIButton!
    
    var arrayImageId = [1,1,2,2,3,3,4,4,5,5]
    var tagArray: [Int] = []
    
    var tableauButtons: [UIButton] = [UIButton]()
    //@IBOutlet var buttons: [UIButton]!
    
    @IBAction func actionBouton(_ sender: UIButton) {
        let tagg = String(sender.tag)
          sender.setBackgroundImage(UIImage(named: tagg), for: .normal)
        print("yo")
    }
    
    
    @IBAction func myImageButton(_ sender: UIButton, tag: Int) {
        let tagg: String = String(tag)
        
        sender.setBackgroundImage(UIImage(named: tagg), for: .normal)
        print("yoyo")
    }
    
    func assignTag(tag: [Int]){
        print("on est dans assign tag")
        print("tag est: \(tag)")
            Bouton1.tag=tag[0]
//        Bouton1.addTarget(self,action:#selector(buttonClicked(sender:)),for:.touchUpInside)
            
        print("bouton1.tag est \(Bouton1.tag)")
        
            Bouton2.tag=tag[1]

            Bouton3.tag=tag[2]
         
            Bouton4.tag=tag[3]
                 
            Bouton5.tag=tag[4]
        
            Bouton6.tag=tag[5]
        
            Bouton7.tag=tag[6]
        
            Bouton8.tag=tag[7]
          
            Bouton9.tag=tag[8]
        
            Bouton10.tag=tag[9]
    }

    
    func assignImage(){
        
        print("on est dans assign image")

        while arrayImageId.count >= 1{
            print(arrayImageId)
            
            let idx = Int(arc4random_uniform(UInt32(arrayImageId.count)))
            
            print(arrayImageId[idx])
            
            tagArray += [arrayImageId[idx]]
            
            
            arrayImageId.remove(at: idx)
        }
        assignTag(tag: tagArray)
     
    }
    
    @objc func buttonClicked(sender:UIButton)
    {
        print("on est dans buttonclicked")
        switch sender.tag
        {
            case 1: print("1")     //when Button1 is clicked...
            myImageButton(sender, tag:1)
                break
            case 2: print("2")     //when Button2 is clicked...
            myImageButton(sender, tag:2)
                break
            case 3: print("3")     //when Button3 is clicked...
            myImageButton(sender, tag:3)
                break
            case 4: print("4")     //when Button1 is clicked...
            myImageButton(sender, tag:4)
                break
            case 5: print("5")     //when Button1 is clicked...
            myImageButton(sender, tag:5)
                break
            case 6: print("6")     //when Button1 is clicked...
            myImageButton(sender, tag:6)
                break
            case 7: print("7")     //when Button1 is clicked...
            myImageButton(sender, tag:7)
                break
            case 8: print("8")     //when Button1 is clicked...
            myImageButton(sender, tag:8)
                break
            case 9: print("9")     //when Button1 is clicked...
            myImageButton(sender, tag:9)
                break
            case 10: print("10")     //when Button1 is clicked...
            myImageButton(sender, tag:10)
                break
            
            default: print("Other...")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // assignTag()
        assignImage()
        
        
        
        // myImageButton(Bouton1)
        
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
