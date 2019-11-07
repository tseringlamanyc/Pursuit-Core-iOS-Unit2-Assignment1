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
    
    @IBOutlet weak var playerOneScore: UILabel!
    @IBOutlet weak var playerTwoScore: UILabel!
    
    
    
    var brain = TicTacToeBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
    }
    
    
    @IBAction func resetGame(_ sender: UIButton) {
        newGame()
    }
    
    
    func winRow () {
        if ["a","a","a"] == brain.emptyGrid[0] || ["a","a","a"] == brain.emptyGrid[1] || ["a","a","a"] == brain.emptyGrid[2] {
            whosTurn.text = "player 1 won"
            brain.playerOne += 1
            playerOneScore.text = "Player 1 score: \(brain.playerOne)"
            for button in gameButtons {
                button.isEnabled = false
            }
        } else if ["b","b","b"] == brain.emptyGrid[0] || ["b","b","b"] == brain.emptyGrid[1] || ["b","b","b"] == brain.emptyGrid[2] {
            whosTurn.text = "player 2 won"
            brain.playerTWo += 1
            playerTwoScore.text = "Player 2 score: \(brain.playerTWo)"
            for button in gameButtons {
                button.isEnabled = false
            }
        }
    }
    
    func winColA() {
        if "a" == brain.emptyGrid[0][0] && "a" == brain.emptyGrid[1][0] && "a" == brain.emptyGrid[2][0] {
            whosTurn.text = "player 1 won"
            brain.playerOne += 1
            playerOneScore.text = "Player 1 score: \(brain.playerOne)"
            for button in gameButtons {
                button.isEnabled = false
            }
        } else {
            if "a" == brain.emptyGrid[0][1] && "a" == brain.emptyGrid[1][1] && "a" == brain.emptyGrid[2][1] {
                whosTurn.text = "player 1 won"
                brain.playerOne += 1
                playerOneScore.text = "Player 1 score: \(brain.playerOne)"
                for button in gameButtons {
                    button.isEnabled = false
                }
            } else {
                if "a" == brain.emptyGrid[0][2] && "a" == brain.emptyGrid[1][2] && "a" == brain.emptyGrid[2][2] {
                    whosTurn.text = "player 1 won"
                    brain.playerOne += 1
                    playerOneScore.text = "Player 1 score: \(brain.playerOne)"
                    for button in gameButtons {
                        button.isEnabled = false
                    }
                }
            }
        }
    }
    
    func winColB() {
        if "b" == brain.emptyGrid[0][0] && "b" == brain.emptyGrid[1][0] && "b" == brain.emptyGrid[2][0] {
            whosTurn.text = "player 2 won"
            brain.playerTWo += 1
            playerTwoScore.text = "Player 2 score: \(brain.playerTWo)"
            for button in gameButtons {
                button.isEnabled = false
            }
        } else {
            if "b" == brain.emptyGrid[0][1] && "b" == brain.emptyGrid[1][1] && "b" == brain.emptyGrid[2][1] {
                whosTurn.text = "player 2 won"
                brain.playerTWo += 1
                playerTwoScore.text = "Player 2 score: \(brain.playerTWo)"
                for button in gameButtons {
                    button.isEnabled = false
                }
            } else {
                if "b" == brain.emptyGrid[0][2] && "b" == brain.emptyGrid[1][2] && "b" == brain.emptyGrid[2][2] {
                    whosTurn.text = "player 2 won"
                    brain.playerTWo += 1
                    playerTwoScore.text = "Player 2 score: \(brain.playerTWo)"
                    for button in gameButtons {
                        button.isEnabled = false
                    }
                }
            }
        }
    }
    
    func winDiagA() {
        if "a" == brain.emptyGrid[0][0] && "a" == brain.emptyGrid[1][1] && "a" == brain.emptyGrid[2][2] {
            whosTurn.text = "player 1 won"
            brain.playerOne += 1
            playerOneScore.text = "Player 1 score: \(brain.playerOne)"
            for button in gameButtons {
                button.isEnabled = false
            }
        } else {
            if "a" == brain.emptyGrid[0][2] && "a" == brain.emptyGrid[1][1] && "a" == brain.emptyGrid[2][0] {
                whosTurn.text = "player 1 won"
                brain.playerOne += 1
                playerOneScore.text = "Player 1 score: \(brain.playerOne)"
                for button in gameButtons {
                    button.isEnabled = false
                }
            }
        }
    }
    
    func winDiagB() {
        if "b" == brain.emptyGrid[0][0] && "b" == brain.emptyGrid[1][1] && "b" == brain.emptyGrid[2][2] {
            whosTurn.text = "player 2 won"
            brain.playerTWo += 1
            playerTwoScore.text = "Player 2 score: \(brain.playerTWo)"
            for button in gameButtons {
                button.isEnabled = false
            }
        } else {
            if "b" == brain.emptyGrid[0][2] && "b" == brain.emptyGrid[1][1] && "b" == brain.emptyGrid[2][0] {
                whosTurn.text = "player 2 won"
                brain.playerTWo += 1
                playerTwoScore.text = "Player 2 score: \(brain.playerTWo)"
                for button in gameButtons {
                    button.isEnabled = false
                }
            }
        }
    }
    
    
    
    
    @IBAction func buttonPressed(_ sender: GameButton) {
        
        if playerGame == 1 {
            brain.emptyGrid[sender.row][sender.col] = "a"
            whosTurn.text = "Player 2, its your turn"
            sender.setBackgroundImage(UIImage(named: "omark"), for: .normal)
            playerGame = 2
        } else {
            whosTurn.text = "Player 1, its your turn"
            brain.emptyGrid[sender.row][sender.col] = "b"
            sender.setBackgroundImage(UIImage(named: "xmark"), for: .normal)
            playerGame = 1
        }
        winRow()
        winColA()
        winColB()
        winDiagA()
        winDiagB()
        sender.isEnabled = false
        
    }
    
    func newGame() {
        welcomeLabel.text = "Welcome to tic-tack-toe"
        whosTurn.text = "Player 1, its your turn"
        for button in gameButtons {
            button.setBackgroundImage(nil, for: .normal)
            button.isEnabled = true
        }
        brain.emptyGrid = [
            ["","",""],
            ["","",""],
            ["","",""]
        ]
        
    }
    
    
}

