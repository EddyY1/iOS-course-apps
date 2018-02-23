//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Eddy Yeung on 2/19/18.
//  Copyright © 2018 Eddy Yeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ball: UIImageView!
    
    var randomIndex = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeBall(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage(){
        randomIndex = Int(arc4random_uniform(5))
        
        ball.image = UIImage(named: ballArray[randomIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    

}

