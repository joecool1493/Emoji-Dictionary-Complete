//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Joey Newfield on 12/22/17.
//  Copyright © 2017 Joey Newfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😇"
        emoji1.definition = "Sarah"
        emoji1.adjective = "Known to others as 'sweet'"
        emoji1.age = "14"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤯"
        emoji2.definition = "Daddy"
        emoji2.adjective = "Known to others as 'broken'"
        emoji2.age = "185"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤪"
        emoji3.definition = "Joey"
        emoji3.adjective = "Known to others as 'handsome and the best'"
        emoji3.age = "24"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤗"
        emoji4.definition = "Mommy"
        emoji4.adjective = "Known to others as 'MOMMY'"
        emoji4.age = "25,894"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🤬"
        emoji5.definition = "Austin"
        emoji5.adjective = "Known to others as 'who?'"
        emoji5.age = "25"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐶"
        emoji6.definition = "Petey"
        emoji6.adjective = "Known to others as 'asleep'"
        emoji6.age = "Unknown"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }


}

