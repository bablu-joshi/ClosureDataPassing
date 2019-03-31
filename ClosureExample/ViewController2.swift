//
//  ViewController2.swift
//  ClosureExample
//
//  Created by Bablu Joshi on 31/03/19.
//  Copyright © 2019 Bablu Joshi. All rights reserved.
//

import UIKit
typealias viewcontroller2Block = (_ infoToReturn :String) ->()

class ViewController2: UIViewController {
    var completionBlock:viewcontroller2Block?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonAction2(_ sender: Any) {
        guard let cb = completionBlock.self else {return}
        cb("BABLU JOSHI")
        self.navigationController?.popViewController(animated: true)
    }
    

}
