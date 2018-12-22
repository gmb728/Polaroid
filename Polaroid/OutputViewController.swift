//
//  OutputViewController.swift
//  Polaroid
//
//  Created by Chang Sophia on 12/20/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit
var ratio = "1:1"
class OutputViewController: UIViewController {

   
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var frameView: UIView!
    @IBOutlet weak var frontImageView: UIImageView!
    @IBOutlet weak var bgImageView: UIImageView!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteLabel.text = newQuotes[0]
        bgImageView.image = UIImage(named: newBgs[0])
        
        
        // Do any additional setup after loading the view, typically from a nib.
      
        let imageWidth: CGFloat = 414
        if ratio == "1:1" {
            bgImageView.frame.size.height = imageWidth
            
        } else if ratio == "3:4" {
            bgImageView.frame.size.height = imageWidth / 3 * 4
            
        } else {
            bgImageView.frame.size.height = imageWidth / 16 * 9
             

        }
        frameView.frame.size.height = bgImageView.frame.maxY + 100
        quoteLabel.frame.origin.y = bgImageView.frame.maxY + 20
        frontImageView.frame = CGRect(x: 30, y: bgImageView.frame.height-120 , width: frontImageView.frame.width, height: frontImageView.frame.height)
        
//animation
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 3, delay: 0, animations: {
            
            self.frameView.frame = CGRect(x: 20, y: 120, width: self.frameView.frame.width, height: self.frameView.frame.height)
        }, completion: nil)
    // Do any additional setup after loading the view.

}
   
}
