//
//  ViewController.swift
//  ClosureExample
//
//  Created by Bablu Joshi on 31/03/19.
//  Copyright © 2019 Bablu Joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction1(_ sender: Any) {
       
        let next = self.storyboard?.instantiateViewController(withIdentifier: "2") as! ViewController2 ;
        
        next.completionBlock = {(dataReturned) -> ()in
            
            self.view.backgroundColor = UIColor.red
            //Data is returned **Do anything with it **
            print("VC 1",dataReturned)
        }
        
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}

