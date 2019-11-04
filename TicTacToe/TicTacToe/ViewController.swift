//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gameButtons: [GameButton]!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var resetGame: UIButton!
    @IBOutlet weak var gridImage: UIImageView!
    
    @IBOutlet weak var whosTurn: UILabel!
    
    var player = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome to tic-tack-toe"
        whosTurn.text = "Player 1, its your turn"
        //        sender.setBackgroundImage(UIImage(named: "omark"), for: .normal)
        
    }
    
    
    @IBAction func resetGame(_ sender: UIButton) {
        for button in gameButtons {
            button.isHidden = true
        }
        viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: GameButton) {
        
        if player == 1 {
            whosTurn.text = "Player 2, its your turn"
            sender.setBackgroundImage(UIImage(named: "omark"), for: .normal)
            player = 2
        } else  {
            whosTurn.text = "Player 1, its your turn"
            sender.setBackgroundImage(UIImage(named: "xmark"), for: .normal)
            player = 1
        }
        
        
    }
    
    
}

