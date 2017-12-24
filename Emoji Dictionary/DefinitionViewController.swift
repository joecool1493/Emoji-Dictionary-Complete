//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Joey Newfield on 12/22/17.
//  Copyright © 2017 Joey Newfield. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var adjectiveLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        ageLabel.text = "Age: \(emoji.age)"
        definitionLabel.text = "\(emoji.definition)"
        adjectiveLabel.text = "\(emoji.adjective)"
       
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
