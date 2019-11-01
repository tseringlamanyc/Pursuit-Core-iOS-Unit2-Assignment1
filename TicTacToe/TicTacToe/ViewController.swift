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
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var resetGame: UIButton!
    @IBOutlet weak var gridImage: UIImageView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    turnLabel.text = "Welcome to tic-tack-toe"
    
    
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    
    @IBAction func resetGame(_ sender: UIButton) {
        viewDidLoad()
        
    }
    
  
    @IBAction func buttonPressed(_ sender: GameButton) {
        
    }
    

}

