//
//  ViewController.swift
//  tic tack
//
//  Created by mohamed on 2/11/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var activeplayer = 1 // cross
    var gamestate=[0,0,0,0,0,0,0,0,0]
    @IBAction func crossb(_ sender: Any)
    {
        if gamestate[(sender as AnyObject).tag-1] == 0{
             gamestate[(sender as AnyObject).tag-1] == activeplayer
            if activeplayer == 1{
                (sender as AnyObject).setImage(UIImage(named: "Cross.jpg"), for: UIControl.State())
                activeplayer = 2
            }
            else{
                (sender as AnyObject).setImage(UIImage(named: "nouht.jpeg"), for: UIControl.State())
                activeplayer = 1
            }
        }
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

