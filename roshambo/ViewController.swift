//
//  ViewController.swift
//  roshambo
//
//  Created by Peter Evans on 3/18/15.
//  Copyright (c) 2015 Peter Evans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func randomGuessValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "scissorsSelected" {
            
            let controller = segue.destinationViewController as! ResultViewController
            
            controller.userValue = 3
            controller.resultValue = self.randomGuessValue()
        }
        else if segue.identifier == "paperSelected" {
            let controller = segue.destinationViewController as! ResultViewController
            
            controller.userValue = 2
            controller.resultValue = self.randomGuessValue()
        }
    }

    @IBAction func paperButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("paperSelected", sender: self)
    }

    @IBAction func rockButtonPressed(sender: UIButton) {
        
        var controller: ResultViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        controller.userValue = 1
        controller.resultValue = self.randomGuessValue()
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    

    
}

