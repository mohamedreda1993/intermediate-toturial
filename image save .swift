//  saveimage
//
//  Created by mohamed on 2/12/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // how to safe image
      
        // encoding
        let image = UIImage(named: "mario.png")
        let imagedata:NSData=image!.pngData() as! NSData
        // saved image
        UserDefaults.standard.set(imagedata, forKey: "saved image")

        //decode
        let data = UserDefaults.standard.object(forKey: "saved image") as! NSData
        myimage.image = UIImage(data: data as Data)
    }


}
