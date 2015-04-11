//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Sarvex Jatasra on 12/04/2015.
//  Copyright (c) 2015 Sarvex Jatasra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let menConversionConstant = 30
    let womenConversionConstant = 30.5

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton, forEvent event: UIEvent) {
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!

        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + menConversionConstant)" + " in European Shoe Size"
    }

    @IBAction func convertWomenButtonPressed(sender: UIButton, forEvent event: UIEvent) {
        let sizeFromTextField = Double ((womensShoeSizeTextField.text as NSString).doubleValue)

        womensConvertedShoeSizeLabel.hidden = false;
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + womenConversionConstant)" + " in European Shoe Size"

    }


}

