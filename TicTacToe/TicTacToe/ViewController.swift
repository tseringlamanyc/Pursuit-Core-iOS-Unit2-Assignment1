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
    
    var fillGrid = TicTacToeBrain.init().emptyGrid
  
   
        
    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
    }
    
    
    @IBAction func resetGame(_ sender: UIButton) {
        newGame()
    }
    
    func newGame() {
        welcomeLabel.text = "Welcome to tic-tack-toe"
        whosTurn.text = "Player 1, its your turn"
        for button in gameButtons {
            button.setBackgroundImage(nil, for: .normal)
            button.isEnabled = true
        }
    }
    
    @IBAction func buttonPressed(_ sender: GameButton) {
    
        if playerGame == 1 {
            fillGrid[sender.row][sender.col] = "a"
                whosTurn.text = "Player 2, its your turn"
                sender.setBackgroundImage(UIImage(named: "omark"), for: .normal)
                playerGame = 2
            } else {
                whosTurn.text = "Player 1, its your turn"
            fillGrid[sender.row][sender.col] = "b"
                sender.setBackgroundImage(UIImage(named: "xmark"), for: .normal)
                playerGame = 1
            }
            sender.isEnabled = false
        }
    
    
}

