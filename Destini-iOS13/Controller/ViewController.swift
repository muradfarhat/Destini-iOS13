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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyBrain.exampleStory = storyBrain.stores[0]
        
        buildScreen()
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let senderTitle = sender.currentTitle!
        storyBrain.getStory(senderTitle)
        buildScreen()
    }
    
    func buildScreen() {
        self.storyLabel.text = storyBrain.exampleStory!.title
        self.choice1Button.setTitle(storyBrain.exampleStory!.choice1, for: .normal)
        self.choice2Button.setTitle(storyBrain.exampleStory!.choice2, for: .normal)
    }
    
}

