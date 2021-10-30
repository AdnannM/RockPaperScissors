//
//  ViewController.swift
//  RockPapperScissors
//
//  Created by Adnann Muratovic on 30.10.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var myHand = ""
    let hand = ["👊", "✋", "✌️"]
    let loseAgainst = ["👊":"✌️", "✋":"👊","✌️":"✋"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
    
    // MARK: Action
    @IBAction func selectRock(_ sender: Any) {
        myHand = "👊"
        label.text = "You Selected \(myHand)"
    }
    
    @IBAction func selectPaper(_ sender: Any) {
        myHand = "✋"
        label.text = "You Selected \(myHand)"
    }
    @IBAction func selectScissors(_ sender: Any) {
        myHand = "✌️"
        label.text = "You Selected \(myHand)"
    }
    
    
    @IBAction func play(_ sender: Any) {
        
        var counter = 3
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if counter > 0 {
                self.label.text = "You selected \(self.myHand)\n\(counter)"
            } else {
                // Play
                self.playTheGame()
                timer.invalidate()
            }
            
            counter -= 1
        }
    }
    
    private func playTheGame() {
        let iPhoneHand = hand.randomElement()
        var message = ""
        if iPhoneHand == myHand {
             message = "It's a 👔"
        } else if loseAgainst[iPhoneHand!] == myHand {
            message = "iPhone Wins"
        } else {
            message = "You Win"
        }
        
        label.text = "You Selected \(myHand)\niPhone selected \(iPhoneHand!)\n\(message)"
    }
}

