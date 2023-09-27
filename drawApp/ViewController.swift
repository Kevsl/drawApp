//
//  ViewController.swift
//  drawApp
//
//  Created by K on 27/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var drawView: UIView!
   
    var currentColor:UIColor = .black
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        printSize()
//        createSubview(100, 100, 100, 100, .red)
    }

    
//    func printSize(){
//        let buttonSize = self.mainButton.frame.origin
//        print(buttonSize)
//    }
//
    
    func createSubview(_ x:Double,_ y:Double,_ width:Double,_ height:Double,_ backgroundColor:UIColor){
        
        let midWith = width / 2
        
        let midHeight = height / 2
        
    
        
        let rect = CGRect(x: x - midWith, y: y - midHeight, width: width, height: height)
        
     
        let customView:UIView = UIView(frame: rect)
        customView.backgroundColor = backgroundColor
        self.view.addSubview(customView)
    }
    
    
    @IBAction func cyanButton(_ sender: UIButton) {
        currentColor = .systemCyan
    }
    
    
    
    @IBAction func orangeButton(_ sender: UIButton) {
        currentColor = .systemOrange
    }
    @IBAction func greenButton(_ sender: UIButton) {
        currentColor = .systemGreen
    }
    
    @IBAction func blackButton(_ sender: Any) {
        currentColor = .black
    }
    @IBAction func redButton(_ sender: UIButton) {
        currentColor = .systemRed
    }
    
    @IBAction func removeSubviews(_ sender: UIButton) {
        for subview in self.drawView.subviews {
               subview.removeFromSuperview()
           }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch =  touches.first else{
            return
        }
    
        let location = touch.location(in: self.drawView)
        
        if(location.y < view.frame.maxY - 150){
            createSubview(location.x, location.y, 10, 10, currentColor )
        }
    
    }
    
    
  

}

