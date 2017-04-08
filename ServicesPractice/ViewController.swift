//
//  ViewController.swift
//  ServicesPractice
//
//  Created by Ann Marie Seyerlein on 4/8/17.
//  Copyright © 2017 Brandon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTable: UITableView!
    
    var instruments = ["Sax", "Piano", "Trumpet", "Violin", "Drums"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTable.dataSource = self
        coolTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return instruments.count
        
    }
    
    // After adding following function, error up top went away!
    
    // Following function decides what is in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Essentially I believe it is initializing all the cells
        let cell = UITableViewCell()
        
        // Filling the table with my instruments
        cell.textLabel?.text = instruments[indexPath.row]
        
        return cell
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

