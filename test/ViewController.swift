//
//  ViewController.swift
//  test
//
//  Created by Kun Hou on 2015-12-06.
//  Copyright © 2015 Kun Hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var show_result: UILabel!
    var slide_2_lable : Float = 0
    
    
    @IBAction func send_slider_value(sender: UISlider)
    {
        self.slide_2_lable = sender.value
    }

    @IBAction func show_percentage(sender: UIButton)
    {
        let result = sender.titleForState(.Normal)!
        var temp = NSNumberFormatter()
        temp.numberStyle = .DecimalStyle
        show_result.text = temp.stringFromNumber(slide_2_lable)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

