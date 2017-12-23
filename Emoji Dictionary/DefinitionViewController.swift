//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Joey Newfield on 12/22/17.
//  Copyright © 2017 Joey Newfield. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😇" {
            definitionLabel.text = "Sarah"
        }
        
        if emoji == "😱" {
            definitionLabel.text = "Daddy"
        }
        
        if emoji == "🤥" {
            definitionLabel.text = "Joey"
        }
        
        if emoji == "🤩" {
            definitionLabel.text = "Mommy"
        }
        
        if emoji == "🤬" {
            definitionLabel.text = "Austin"
        }
        
        if emoji == "🐶" {
            definitionLabel.text = "Petey"
        }
       
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
