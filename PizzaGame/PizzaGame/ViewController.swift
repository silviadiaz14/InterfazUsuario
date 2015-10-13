//
//  ViewController.swift
//  PizzaGame
//
//  Created by Silvia Diaz on 11/10/15.
//  Copyright © 2015 Silvia Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    var tamanios = ["Chica", "Mediana", "Grande"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanios.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return tamanios[row]
    }


}

