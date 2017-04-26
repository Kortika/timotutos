//
//  ViewController.swift
//  Timo leert
//
//  Created by Sitt Min Oo on 19/04/2017.
//  Copyright © 2017 Sitt Min Oo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var downButton: UIButton!
    @IBOutlet weak var upButton: UIButton!
    @IBAction func up(_ sender: Any) {
        count += 1
    }
    
    @IBOutlet weak var limitField: UITextField!
    
    @IBAction func down(_ sender: Any) {
        count -= 1
    
    }
   
    
    @IBOutlet weak var learnBttn: UIButton!
    
    @IBAction func teachTimo(_ sender: Any) {
        let limitValue: Int? = Int(limitField.text!)
        let check = (limitValue != nil) ? limitValue! : 0
        if (check > limit){
            limit = check
        }
    }
   
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var timoText: UILabel!
    
    var limit = 10 {
        didSet{
            timoText.text = String(format: "Timo kan nu tot %d tellen", limit)
        }
    }
    var count = 0{
        didSet {
            count %= (limit+1)
            countLabel.text = String(format: "%02d", count)
            downButton.isEnabled = count > 0
            upButton.isEnabled = count < (limit)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    



}

