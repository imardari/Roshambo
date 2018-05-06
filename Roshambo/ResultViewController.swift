//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Ion M on 5/6/18.
//  Copyright © 2018 Ion M. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var yourValue: String!
    var computerValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // If user selects Rock
        if yourValue == "Rock" {
            if computerValue == "Paper" {
                resultLabel.text = "Rock vs Paper. You lose :("
                image.image = #imageLiteral(resourceName: "PaperCoversRock")
            } else if computerValue == "Scissors" {
                resultLabel.text = "Rock vs Scissors. You win! :)"
                image.image = #imageLiteral(resourceName: "RockCrushesScissors")
            }
        }

        // If user selects Paper
        if yourValue == "Paper" {
            if computerValue == "Rock" {
                resultLabel.text = "Paper vs Rock. You win! :)"
                image.image = #imageLiteral(resourceName: "PaperCoversRock")
            } else if computerValue == "Scissors" {
                resultLabel.text = "Paper vs Scissors. You lose :("
                image.image = #imageLiteral(resourceName: "ScissorsCutPaper")
            }
        }

        // If user selects Scissors
        if yourValue == "Scissors" {
            if computerValue == "Rock" {
                resultLabel.text = "Scissors vs Rock. You lose :("
                image.image = #imageLiteral(resourceName: "RockCrushesScissors")
            } else if computerValue == "Paper" {
                resultLabel.text = "Scissors vs Paper. You win! :)"
                image.image = #imageLiteral(resourceName: "ScissorsCutPaper")
            }
        }
        
        // In case of a tie
        if yourValue == computerValue {
            resultLabel.text = "\(yourValue!) vs \(computerValue!). It's a tie."
            image.image = #imageLiteral(resourceName: "itsATie")
        }
    }

    @IBAction func playAgain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
