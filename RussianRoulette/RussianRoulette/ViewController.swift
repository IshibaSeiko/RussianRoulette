//
//  ViewController.swift
//  RussianRoulette
//
//  Created by 石場清子 on 2018/12/06.
//  Copyright © 2018 石場清子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var push: UIButton!
    
    var tapCount: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        push.frame = CGRect(x: 100, y: 100, width: 600, height: 80)
        let bkgImage = UIImage(named: "bakudan")
        push.setBackgroundImage(bkgImage, for: .normal)
        
    }
    
    var out = arc4random_uniform(100) + 1

    @IBAction func countUp(_ sender: UIButton) {

        
        tapCount += 1
        print(out)
        count.text = String(tapCount)
        
        
        if tapCount == out {
            count.text = "アウト！"
            let changeImage = UIImage(named: "bakuha")
            push.setBackgroundImage(changeImage, for: .normal)
            let r: CGFloat = CGFloat(arc4random_uniform(155)+100) / 255.0
            let g: CGFloat = CGFloat(arc4random_uniform(155)+100) / 255.0
            let b: CGFloat = CGFloat(arc4random_uniform(155)+100) / 255.0
            count.textColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
            tapCount = 0
            out = arc4random_uniform(100) + 1
            
        }
        
        else {
            let bkgImage = UIImage(named: "bakudan")
            push.setBackgroundImage(bkgImage, for: .normal)

        }
    
    }
    

}

