//
//  ViewController.swift
//  Game_AddOne
//
//  Created by Tony Huang on 2019-12-15.
//  Copyright © 2019 TonTonKatsu. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {

    @IBOutlet var lblStart : UILabel!
    @IBOutlet var settingsIcon : UIImageView!
    @IBOutlet var btnStart : UIButton!
    @IBOutlet var btnSettings : UIButton!

    
    @IBAction func unwindToMainVC(sender: UIStoryboardSegue)
    {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblStart.layer.cornerRadius = 20
        lblStart.clipsToBounds = true
        // Do any additional setup after loading the view.
    }


}

