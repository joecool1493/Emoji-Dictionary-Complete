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
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😇" {
            definitionLabel.text = "Sarah"
            adjectiveLabel.text = "Known to others as 'sweet'"
            ageLabel.text = "Age: 14"
        }
        
        if emoji == "😱" {
            definitionLabel.text = "Daddy"
            adjectiveLabel.text = "Known to others as 'broken'"
            ageLabel.text = "Age: 185"
        }
        
        if emoji == "🤥" {
            definitionLabel.text = "Joey"
            adjectiveLabel.text = "Known to others as 'dumb, really really dumb'"
            ageLabel.text = "Age: 24"
        }
        
        if emoji == "🤩" {
            definitionLabel.text = "Mommy"
            adjectiveLabel.text = "Known to others as '#1 Mommy and baker'"
            ageLabel.text = "Age: 25,894"
        }
        
        if emoji == "🤬" {
            definitionLabel.text = "Austin"
            adjectiveLabel.text = "Known to others as 'who?'"
            ageLabel.text = "Age: 25"
        }
        
        if emoji == "🐶" {
            definitionLabel.text = "Petey"
            adjectiveLabel.text = "Known to others as 'asleep'"
            ageLabel.text = "Age: Unknown"
        }
       
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
