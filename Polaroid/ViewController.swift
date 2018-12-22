//
//  ViewController.swift
//  Polaroid
//
//  Created by Chang Sophia on 12/20/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

var ratioButton = "1:1"
var newBgs: ArraySlice<String> = []
var newQuotes: ArraySlice<String> = []
 
class ViewController: UIViewController {
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var frameView: UIView!
    @IBOutlet weak var frontImageView: UIImageView!
     
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var bgButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var ratioButton: UIButton!
    
    let quotes = ["貨出去，人進來，高雄發大財","禿子跟著月亮走", "高雄又老又窮", "美濃白玉苦瓜","支持九二共識，兩岸一家親"]
  
    let bgs = ["1","2", "3", "4","5"]
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        frontImageView.isHidden = true
       
    }
  
  
    @IBAction func bgButtonPressed(_ sender: UIButton) {
        
        newBgs = bgs.shuffled()[0...1]
        bgImageView.image = UIImage(named: newBgs[0])
       
        frontImageView.isHidden = false
        
    }
    
    @IBAction func quoteButtonPressed(_ sender: UIButton) {
        newQuotes = quotes.shuffled()[0...1]
        quoteLabel.text = newQuotes[0]
        
      }
    
    @IBAction func ratioButtonPressed(_ sender: UIButton) {
        let width: CGFloat = 414
        var height: CGFloat = 0
       
       
        if sender.currentTitle == "1:1" {
            ratio = "3:4"
            height = width / 3 * 4
          
        }
        else if sender.currentTitle == "3:4" {
            ratio = "16:9"
             height = width / 16 * 9
      
        }
        else {
            ratio = "1:1"
            height = 414
        
        }
    
        sender.setTitle(ratio, for: UIControl.State.normal)
        bgImageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        frontImageView.frame = CGRect(x: 0, y: bgImageView.frame.height-150 , width: frontImageView.frame.width, height: frontImageView.frame.height)
        
    }
    
   
    }

