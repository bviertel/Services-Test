//
//  DescViewController.swift
//  ServicesPractice
//
//  Created by Ann Marie Seyerlein on 4/8/17.
//  Copyright © 2017 Brandon. All rights reserved.
//

import UIKit

class DescViewController: UIViewController {

    var instrument =  "null"
    
    @IBOutlet weak var instrumentLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        descLabel.text = instrument

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
