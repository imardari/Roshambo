//
//  ViewController.swift
//  Roshambo
//
//  Created by Ion M on 5/6/18.
//  Copyright © 2018 Ion M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    func randomGameValue() -> String {
        let randomValue = 1 + arc4random() % 3

        var result: String!
        
        switch randomValue {
        case 1:
            result = "Rock"
        case 2:
            result = "Paper"
        case 3:
            result = "Scissors"
        default:
            break
        }
        return result
    }
    
    @IBAction func playRock(_ sender: Any) {
        // Present the other VC programatically
        if let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
            if let navigator = navigationController {
                controller.yourValue = "Rock"
                controller.computerValue = randomGameValue()
                navigator.pushViewController(controller, animated: true)
            }
        }
    }
    
    @IBAction func playPaper(_ sender: Any) {
        // Present other VC using segue + code
        performSegue(withIdentifier: "paper", sender: self)
    }
    
    // Present other VC using segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "paper" {
            let controller = segue.destination as! ResultViewController
            
            controller.yourValue = "Paper"
            controller.computerValue = randomGameValue()
        }
        
        if segue.identifier == "scissors" {
            let controller = segue.destination as! ResultViewController
            
            controller.yourValue = "Scissors"
            controller.computerValue = randomGameValue()
        }
    }
    
}

