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
    
    // Amount of rows in table
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let instrument = instruments[indexPath.row]
        
        performSegue(withIdentifier: "moveSegue", sender: instrument)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let descVC = segue.destination as! DescViewController
        
        descVC.instrument = sender as! String
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

