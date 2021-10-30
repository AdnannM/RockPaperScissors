//
//  ViewController.swift
//  RockPapperScissors
//
//  Created by Adnann Muratovic on 30.10.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
    
    // MARK: Action
    @IBAction func selectRock(_ sender: Any) {
        print("👊")
    }
    
    @IBAction func selectPaper(_ sender: Any) {
        print("✋")
    }
    @IBAction func selectScissors(_ sender: Any) {
        print("✌️")
    }
}

