//
//  ViewController.swift
//  PartyRock
//
//  Created by Adam Seppi on 1/14/17.
//  Copyright © 2017 AdamSeppi. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var burners = [Burner]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as? MusicCell {
            
            let burner = burners[indexPath.row]
            
            cell.updateUI(burner: <#T##Burner#>)
            return cell
            
        }
        else {
            return UITableViewCell()
        }
        
         
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return burners.count
    }
    
    
}

