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
    var activePlayer = 1

    @IBAction func pressButton(_ sender: Any) {
        
        if activePlayer == 1 {
            
            // set image when press button
            (sender as AnyObject).setImage(UIImage(named: "nought.png"), for:[])
            activePlayer = 2
            
        } else {
            (sender as AnyObject).setImage(UIImage(named: "cross.png"), for:[])
            activePlayer = 1
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

