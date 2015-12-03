//
//  ViewController.swift
//  ScrollView-Dynamic
//
//  Created by mitchell hudson on 12/2/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let container = UIView()
        var array = [UIView]()
        
        var widthOfScrollView:CGFloat = 0.0
        
        for var i in 0...10 {
            
            widthOfScrollView += 100
            print(widthOfScrollView)
            
            // let box = UIView(frame: CGRect(x: 110 * i, y: 0, width: 100, height: 100))
            let box = UIImageView(frame: CGRect(x: 110 * i, y: 0, width: 100, height: 100))
            box.image = UIImage(named: "alien")
            
            //box.contentMode = .Center
            box.contentMode = .ScaleAspectFill
            
            array.append(box)
            let hue = 360 / 10 * CGFloat(i) / 360
            //print(hue)
            box.backgroundColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
            // container.addSubview(box)
            scrollView.addSubview(box)
            // self.view.addSubview(box)
        }
        
        scrollView.contentSize = CGSize(width: widthOfScrollView + 100, height: 100)
        // scrollView.addSubview(container)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

