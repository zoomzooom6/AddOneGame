//
//  AddOneFiveDigModeViewController.swift
//  Game_AddOne
//
//  Created by Tony Huang on 2019-12-15.
//  Copyright © 2019 TonTonKatsu. All rights reserved.
//

import UIKit

class AddOneFiveDigModeViewController: UIViewController {

    @IBOutlet weak var lblScore : UILabel?
    @IBOutlet weak var lblTime : UILabel?
    @IBOutlet weak var lblMain : UILabel?
    @IBOutlet weak var txtField : UITextField?
    
    var score = 0
    var timer:Timer?
    var seconds = 60
    
    func updateScoreLbl() {
        lblScore?.text = String(score)
    }
    
    func updateMainLbl() {
        lblMain?.text = String.randomNum(length: 5)
    }
    
    @IBAction func inputDidChange() {
        guard let numText = lblMain?.text, let inpText = txtField?.text else {
            return
        }
        guard inpText.count == 5 else {
            return
        }
        
        var isCorrect = true
        
        for n in 0..<5
        {
            var input = inpText.integer(at: n)
            let number = numText.integer(at: n)
            if input == 0 {
                input = 10
            }
            if input != number + 1 {
                isCorrect = false
                break
            }
        }
        
        if isCorrect {
            score += 1
        }
        else {
            score -= 1
        }
        updateMainLbl()
        updateScoreLbl()
        txtField?.text = ""
        
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                if self.seconds == 0 {
                    self.finishGame()
                }
                else if self.seconds <= 60 {
                    self.seconds -= 1
                    self.updateTimeLabel()
                }
            }
        }
    }
    
    func updateTimeLabel() {
        let min = (seconds / 60 ) % 60
        let sec = seconds % 60
        lblTime?.text = String(format: "%0.2d", min) + ":" + String(format: "%0.2d", sec)
    }

    func finishGame()
    {
        timer?.invalidate()
        timer = nil
        if score > 8 {
            performSegue(withIdentifier: "FiveModeWin", sender: self)
        }
        else {
            performSegue(withIdentifier: "FiveModeLose", sender: self)
        }
        score = 0
        seconds = 60
        updateTimeLabel()
        updateMainLbl()
        updateScoreLbl()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateScoreLbl()
        updateMainLbl()
        updateTimeLabel()

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
