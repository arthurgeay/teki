//
//  ViewController.swift
//  Teki
//
//  Created by Arthur Geay on 19/05/2018.
//  Copyright © 2018 Arthur Geay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let celebrities = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagarfeld", "la Scarlett Johansson"]
    let activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party"]
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        // Sélectionne un élément aléatoire dans le tableau des célébrités
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let celebrity = celebrities[randomIndex1]
        
        // Sélectionne un élément aléatoire dans le tableau des activités
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let activity = activities[randomIndex2]
        
        // Génération de la citation + affectation au label
        let quote = "Tu es " + celebrity + " " + activity + " !"
        quoteLabel.text = quote
    }
}

