//
//  TipoMasaViewController.swift
//  PizzaGame
//
//  Created by Silvia Diaz on 13/10/15.
//  Copyright © 2015 Silvia Diaz. All rights reserved.
//

import UIKit

class TipoMasaViewController: UIViewController {
    
    var tamanio: String!
    var tipoMasa: String!
    
    
    @IBOutlet weak var tipoMasaControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("\(tamanio)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "tipoQueso") {
            
            
            if(tipoMasaControl.selectedSegmentIndex == 0) {
                tipoMasa = "Delgada"
            } else if(tipoMasaControl.selectedSegmentIndex == 1) {
                tipoMasa = "Crujiente"
            } else if(tipoMasaControl.selectedSegmentIndex == 2) {
                tipoMasa = "Gruesa"
            }
            
           
            
            (segue.destinationViewController as! TipoQuesoViewController).tamanio = tamanio
            (segue.destinationViewController as! TipoQuesoViewController).tipoMasa = tipoMasa
        }
    }

    
}