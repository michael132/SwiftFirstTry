//
//  ViewController.swift
//  TestSwift
//
//  Created by Yu Chi Li on 7/3/15.
//  Copyright (c) 2015 Yu Chi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!

    @IBOutlet weak var secondCardImageView: UIImageView!

    @IBOutlet weak var playRoundButton: UIButton!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    var cardNameArray:[String] = ["card1","card2","card3","card4","card5","card6","card7","card8","card9","card10",
                                  "card11","card12","card13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(_ sender: UIButton) {
        
        //randomize a number for the first imageview, this produces 1 ~ 13 (with a +1)
        let firstRandom = Int(arc4random_uniform(13))
        
        //construct a string with a random number
        //var firstCardString = String(format: "card%i", firstRandom)
        
        //another way of getting a string using an array
        let firstCardString = self.cardNameArray[firstRandom]
        
        let secondRandom = Int(arc4random_uniform(13))
        
        //var secondCardString = String(format: "card%i", secondRandom)
        let secondCardString = self.cardNameArray[secondRandom]
        
        //set the first card image view to the assed corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
     
        
        if (firstRandom > secondRandom) {
            // if first card is larger
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        }
        else if firstRandom == secondRandom {
            // if the same
        }
        else {
            // second card is larger
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
        
    }
}

