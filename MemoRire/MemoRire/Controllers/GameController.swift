//
//  Game.swift
//  MemoRire
//
//  Created by Du Halgouet Melec on 24/10/2019.
//  Copyright © 2019 Grandin Benjamin. All rights reserved.
//

import UIKit

class GameController: UIViewController {
//    @IBOutlet weak var Bouton1: UIButton!
//    @IBOutlet weak var Bouton2: UIButton!
//    @IBOutlet weak var Bouton3: UIButton!
//    @IBOutlet weak var Bouton4: UIButton!
//    @IBOutlet weak var Bouton5: UIButton!
//    @IBOutlet weak var Bouton6: UIButton!
//    @IBOutlet weak var Bouton7: UIButton!
//    @IBOutlet weak var Bouton8: UIButton!
//    @IBOutlet weak var Bouton9: UIButton!
//    @IBOutlet weak var Bouton10: UIButton!
    
    @IBOutlet weak var Bouton1: Card!
    @IBOutlet weak var Bouton2: Card!
    @IBOutlet weak var Bouton3: Card!
    @IBOutlet weak var Bouton4: Card!
    @IBOutlet weak var Bouton5: Card!
    @IBOutlet weak var Bouton6: Card!
    @IBOutlet weak var Bouton7: Card!
    @IBOutlet weak var Bouton8: Card!
    @IBOutlet weak var Bouton9: Card!
    @IBOutlet weak var Bouton10: Card!
    
    var buttons: [Card] = [Card]()
    
    
    var arrayImageId = [1,1,2,2,3,3,4,4,5,5]
    var tagArray: [Int] = []
    
    @IBAction func actionBouton(_ sender: Card) {
        print("discovered? \(sender.discovered)")
        let tagg = String(sender.tag)
        sender.setBackgroundImage(UIImage(named: tagg), for: .normal)
    }
    
    func assignTag(tag: [Int]){
            Bouton1.tag=tag[0]
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

        while arrayImageId.count >= 1{

            let idx = Int(arc4random_uniform(UInt32(arrayImageId.count)))
            
            tagArray += [arrayImageId[idx]]
            arrayImageId.remove(at: idx)
        }
        assignTag(tag: tagArray)
    }
    
    func isWin(cards: [Card]) -> Bool{
        var isWinner = true
        
        for card in cards {
            if(card.found == false){
                isWinner = false
                break
            }
        }
        return isWinner
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons = [Bouton1, Bouton2, Bouton3, Bouton4, Bouton5, Bouton6, Bouton7, Bouton8, Bouton9, Bouton10]
        
        assignImage()
    }
}
