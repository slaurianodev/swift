//
//  ViewController.swift
//  Project1
//
//  Created by slauriano on 5/22/17.
//  Copyright © 2017 slauriano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default // load a system file class
        let path = Bundle.main.resourcePath! // load a bundle of path to manage files
        let items = try! fm.contentsOfDirectory(atPath: path) // load the items from the path
        
        for item in items { // loop the content of path to an array
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

