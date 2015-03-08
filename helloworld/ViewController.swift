//
//  ViewController.swift
//  helloworld
//
//  Created by 华润明 on 15/2/25.
//  Copyright (c) 2015年 华润明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        
        let offset = 2
        if let var year = yearOfBirth.text.toInt(){
            var imageNumber = (year - offset) % 2
            image.image = UIImage(named: String(imageNumber))
        }
        else{
            //notify the user
        }
    }

}

