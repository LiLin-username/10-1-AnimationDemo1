//
//  ViewController.swift
//  AnimationDemo1
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 李琳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    var timer:Timer?
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {[weak weakSelf = self](mytimer) in weakSelf?.myView.center.x += 20
            
        })
    }

    @IBAction func btClick(_ sender: Any) {
        //按钮一按动，视图“myView”就移动
        timer?.invalidate()
        UIView.animate(withDuration: 2, delay: 1, options: .curveEaseInOut, animations: {
            self.myView.alpha = 1  //
            
        }){
            (finished) in if finished {
                self.myView.removeFromSuperview()
            }
        }
    }
    
}

