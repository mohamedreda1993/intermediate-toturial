//
//  ViewController.swift
//  json fun
//
//  Created by mohamed on 2/11/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url=URL(string: "http://www.beehive.zad-test.online/api/cases")
        let task=URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil{
                print("error")
            }else{
                if let content = data{
                    do{
                        //array
                        let json = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)
                        print(json)
                    }catch{
                        
                    }
                    
                }
            }
        }
        task.resume()
    }


}

