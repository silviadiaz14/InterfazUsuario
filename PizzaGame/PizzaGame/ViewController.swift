//
//  ViewController.swift
//  PizzaGame
//
//  Created by Silvia Diaz on 11/10/15.
//  Copyright © 2015 Silvia Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

   
    var tamanios = ["Chica", "Mediana", "Grande"]
    var tamanio: String!
    
    @IBOutlet weak var tamanioPicker: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tamanioPicker.delegate=self;
        
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
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamanios[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        (segue.destinationViewController as! TipoMasaViewController).tamanio = tamanio
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(row == 0) {
            tamanio = "Chica"
        }
        else if(row == 1){
            tamanio = "Mediana"
        }
        else if(row == 2){
            tamanio = "Grande"
        }
    }
}

