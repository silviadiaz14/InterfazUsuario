//
//  TipoQuesoViewController.swift
//  PizzaGame
//
//  Created by Silvia Diaz on 13/10/15.
//  Copyright © 2015 Silvia Diaz. All rights reserved.
//


import UIKit

class TipoQuesoViewController: UIViewController {
    var tamanio:String!
    var tipoMasa:String!
    var tipoQueso:String!
    
    @IBOutlet weak var tipoQuesoControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(tamanio) \(tipoMasa)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "ingredientes") {
            
            
            if(tipoQuesoControl.selectedSegmentIndex == 0) {
                tipoQueso = "Mozarela"
            } else if(tipoQuesoControl.selectedSegmentIndex == 1) {
                tipoQueso = "Cheddar"
            } else if(tipoQuesoControl.selectedSegmentIndex == 2) {
                tipoQueso = "Parmesano"
            } else if(tipoQuesoControl.selectedSegmentIndex == 3){
                tipoQueso = "Sin Queso"
                
            }
        }
        
            
            (segue.destinationViewController as! IngredientesViewController).tamanio = tamanio
            (segue.destinationViewController as! IngredientesViewController).tipoMasa = tipoMasa
            (segue.destinationViewController as! IngredientesViewController).tipoQueso = tipoQueso
        }
    
}