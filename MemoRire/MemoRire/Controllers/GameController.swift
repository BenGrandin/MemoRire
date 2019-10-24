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
    var imageArray: [Int] = []
    var count = 0
    
    @IBAction func actionBouton(_ sender: Card) {
        print("discovered? \(sender.discovered)")
        
        if(!sender.discovered){
            click(sender: sender)
        }
    }
    
    func assignTag(images: [Int]){
        for i in 0..<buttons.count{
            print("i == \(i)")
            buttons[i].image = images[i]
        }
    }
    
    func assignImage(){
        while arrayImageId.count >= 1{
            let idx = Int(arc4random_uniform(UInt32(arrayImageId.count)))
            imageArray += [arrayImageId[idx]]
            arrayImageId.remove(at: idx)
        }
        assignTag(images: imageArray)
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
    
    func click(sender: Card){
        let image = String(sender.image)
        print("count \(count)")
       if(count <= 1)
       {
        sender.discovered = true
        print("sender.discovered = \(sender.discovered)")
        sender.setBackgroundImage(UIImage(named: image), for: .normal)
        count+=1
        print("count = \(count)")
       }
       
       if(count == 2){
        
        var cardsDiscovered: Array<Card> = Array()
        
        for card in buttons{
            if(card.discovered && !card.found){
                print("card disco true et notfound")
                cardsDiscovered.append(card)
             }
        }
        if cardsDiscovered.count != 2{
            print(cardsDiscovered)
        }
        
        
         
         let cardDiscovered1 = cardsDiscovered[0]
         let cardDiscovered2 = cardsDiscovered[1]
             
         if( cardDiscovered1.image == cardDiscovered2.image){
            print("2 image same")
             cardDiscovered1.found = true
             cardDiscovered2.found = true
         }
         else{
            print("else")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                cardDiscovered1.discovered = false
                cardDiscovered1.setBackgroundImage(UIImage(named: "0"), for: .normal)
                
                cardDiscovered2.discovered = false
                cardDiscovered2.setBackgroundImage(UIImage(named: "0"), for: .normal)
            }

            
        }
        count = 0
       }
        
        if(isWin(cards: buttons)){
            print("Win ---")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons = [Bouton1, Bouton2, Bouton3, Bouton4, Bouton5, Bouton6, Bouton7, Bouton8, Bouton9, Bouton10]
        
        for bouton in buttons{
            bouton.setBackgroundImage(UIImage(named: "0"), for: .normal)
        }
        
        assignImage()
    }
}
