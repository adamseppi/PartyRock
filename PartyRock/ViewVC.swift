//
//  ViewVC.swift
//  PartyRock
//
//  Created by Adam Seppi on 1/14/17.
//  Copyright © 2017 AdamSeppi. All rights reserved.
//

import UIKit

class ViewVC: UIViewController {

    @IBOutlet var titleLbl: UILabel!
    @IBOutlet weak var webView: UIWebView!
    
    var _burner: Burner!
    var burner: Burner {
        get {
            return _burner
        } set {
            _burner = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = burner.videoTitle
        
        webView.loadHTMLString(burner.videoURL, baseURL: nil)
        
        // Do any additional setup after loading the view.
    }


}
