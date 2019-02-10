//fisrt open main storyboard and import image view and button and put constran
// second drag image and button in code
// third write code 
// forth open info.plist and add privacy photo library usage  and write any thing you want ex)i write your image is safe
//  ViewController.swift
//  image import
//
//  Created by mohamed on 2/10/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    @IBOutlet weak var img: UIImageView!
    
    @IBAction func importb(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate=self
        image.sourceType=UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing=false
        self.present(image,animated: true)
        {
            // after it's complete
            
        }
       
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage 
        {
            img.image=image
        }else{
            //error message
        }
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }


}

