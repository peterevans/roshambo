//
//  ResultViewController.swift
//  roshambo
//
//  Created by Peter Evans on 3/18/15.
//  Copyright (c) 2015 Peter Evans. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    var resultValue: Int?
    var userValue: Int?

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        
        if self.userValue == 1 {
            if resultValue == 1 {
                self.resultImage.image = UIImage(named: "tie")
                self.resultLabel.text = "You Tie!"
            }
            else if resultValue == 2 {
                self.resultImage.image = UIImage(named: "paperWins")
                self.resultLabel.text = "Paper beats Rock. You Lose!"
            }
            else {
                self.resultImage.image = UIImage(named: "rockWins")
                self.resultLabel.text = "Rock beats Scissors. You Win!"
            }
        }
        else if self.userValue == 2 {
            if resultValue == 1 {
                self.resultImage.image = UIImage(named: "paperWins")
                self.resultLabel.text = "Paper beats Rock. You Lose!"
            }
            else if resultValue == 2 {
                self.resultImage.image = UIImage(named: "tie")
                self.resultLabel.text = "You Tie!"
            }
            else {
                self.resultImage.image = UIImage(named: "scissorsWin")
                self.resultLabel.text = "Scissors beats Paper. You Win!"
            }
        }
        else {
            if resultValue == 1 {
                self.resultImage.image = UIImage(named: "rockWins")
                self.resultLabel.text = "Rocks beats Scissors. You Lose!"
            }
            else if resultValue == 2 {
                self.resultImage.image = UIImage(named: "scissorsWin")
                self.resultLabel.text = "Scissors beats paper. You Win!"
                
            }
            else {
                self.resultImage.image = UIImage(named: "tie")
                self.resultLabel.text = "You Tie!"
            }
        }
    }

    @IBAction func playAgainButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
