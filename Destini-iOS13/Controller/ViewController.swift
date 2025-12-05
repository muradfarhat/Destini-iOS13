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
    
    let storyBrain = StoryBrain()
    var exampleStory: Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exampleStory = storyBrain.stores[0]
        
        buildScreen()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let senderTitle = sender.titleLabel?.text
        exampleStory = senderTitle == exampleStory?.choice1 ? storyBrain.stores[1] : storyBrain.stores[2]
        buildScreen()
    }
    
    func buildScreen() {
        self.storyLabel.text = exampleStory!.title
        self.choice1Button.setTitle(exampleStory!.choice1, for: .normal)
        self.choice2Button.setTitle(exampleStory!.choice2, for: .normal)
    }
    
}

