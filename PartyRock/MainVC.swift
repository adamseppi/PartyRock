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
        
        let b1 = Burner(imageURL: "http://s.mxmcdn.net/images-storage/albums/4/7/8/7/8/9/31987874_350_350.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FyASdjZE0R0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Roses ft. ROZES")
        
        let b2 = Burner(imageURL: "https://i2.wp.com/www.rapstop.com/wp-content/uploads/2017/01/The-Chainsmokers-Paris.jpg?resize=300%2C300", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RhU9MZ98jxo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Paris")
        
        let b3 = Burner(imageURL: "http://s.mxmcdn.net/images-storage/albums/9/7/6/0/1/1/33110679_350_350.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Io0fBr1XBUA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Don't Let Me Down")
        
        let b4 = Burner(imageURL: "https://upload.wikimedia.org/wikipedia/en/f/f7/All_We_Know_(featuring_Phoebe_Ryan)_(Official_Single_Cover)_by_The_Chainsmokers.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lEi_XBg2Fpk\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "All We Know")
        
        let b5 = Burner(imageURL: "https://upload.wikimedia.org/wikipedia/en/a/a5/Closer_(featuring_Halsey)_(Official_Single_Cover)_by_The_Chainsmokers.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gT-JzR0qn3o\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Closer")
        
        
        burners.append(b1)
        burners.append(b5)
        burners.append(b2)
        burners.append(b3)
        burners.append(b4)
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as? MusicCell {
            
            let burnerToPlay = burners[indexPath.row]
            
            
            cell.updateUI(burner: burnerToPlay)
            return cell
            
        }
        else {
            return UITableViewCell()
        }
        
         
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return burners.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let burner = burners[indexPath.row]
        
        performSegue(withIdentifier: "ViewVC", sender: burner)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ViewVC {
            if let burn = sender as? Burner {
                destination.burner = burn
            }
        }
    }
    
    
}

