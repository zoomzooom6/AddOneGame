//
//  LevelChooseViewController.swift
//  Game_AddOne
//
//  Created by Tony Huang on 2019-12-15.
//  Copyright © 2019 TonTonKatsu. All rights reserved.
//

import UIKit

class LevelChooseViewController: UIViewController {

    @IBOutlet var lblOne : UIButton!
    @IBOutlet var lblTwo : UIButton!
    @IBOutlet var lblMin : UIButton!
    @IBOutlet var lblFive : UIButton!
    
    
    @IBAction func unwindToLevelsVC(sender: UIStoryboardSegue)
    {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
