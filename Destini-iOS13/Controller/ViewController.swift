//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyArray : [Story] = []
    
        let story0 = Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right")
    
        let story1 = Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead.")
    
        let story2 = Story(title: "You find a treasure chest", choice1: "Open it.", choice2: "Check for traps.")
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        storyArray.append(story0)
        storyArray.append(story1)
        storyArray.append(story2)
        
        storyLabel.text = storyArray[0].title
        choice1Button.setTitle(storyArray[0].choice1, for: .normal)
        choice2Button.setTitle(storyArray[0].choice2, for: .normal)
        choice1Button.tag = 1
        choice2Button.tag = 2
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        if (sender.tag == 1) {
            storyLabel.text = storyArray[1].title
            choice1Button.setTitle(storyArray[1].choice1, for: .normal)
            choice2Button.setTitle(storyArray[1].choice2, for: .normal)
        } else {
            storyLabel.text = storyArray[2].title
            choice1Button.setTitle(storyArray[2].choice1, for: .normal)
            choice2Button.setTitle(storyArray[2].choice2, for: .normal)
        }
    }
    

}

