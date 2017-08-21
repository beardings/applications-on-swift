//
//  ViewController.swift
//  HelloWorld
//
//  Created by Nikolas Ponomarov on 14.08.17.
//  Copyright © 2017 Nikolas Ponomarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var titleimage: UIImageView!
    @IBOutlet weak var welcomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomePressed(_ sender: Any) {
        titleimage.isHidden = false
        welcomeButton.isHidden = true
        background.isHidden = true
    }
    
}

