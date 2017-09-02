//
//  ViewController.swift
//  TicTacToe
//
//  Created by Ainor Syahrizal on 02/09/2017.
//  Copyright © 2017 Ainor Syahrizal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 1 is noughts, 2 is crosses
    
    var activeGame = true
    
    var activePlayer = 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 - empty, 1 - noughts, 2 - crosses
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

    @IBAction func pressButton(_ sender: Any) {
        
        let activePosition = (sender as AnyObject).tag - 1
        
        // to avoid other user tap on a taken spot
        if gameState[activePosition] == 0 && activeGame {
            
            gameState[activePosition] = activePlayer
            
            if activePlayer == 1 {
                
                // set image when press button
                (sender as AnyObject).setImage(UIImage(named: "nought.png"), for:[])
                activePlayer = 2
                
            } else {
                (sender as AnyObject).setImage(UIImage(named: "cross.png"), for:[])
                activePlayer = 1
            }
            
            for combination in winningCombinations {
                
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    
                    // We have a winner!
                    activeGame = false
                    
                    print(gameState[combination[0]])
                    
                }
            }
            
        }
        
        
        // prints the button tag
        print("\((sender as AnyObject).tag) Button pressed")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

