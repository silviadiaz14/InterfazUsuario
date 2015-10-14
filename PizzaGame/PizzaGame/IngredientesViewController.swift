//
//  IngredientesViewController.swift
//  PizzaGame
//
//  Created by Silvia Diaz on 13/10/15.
//  Copyright © 2015 Silvia Diaz. All rights reserved.
//
import UIKit

class IngredientesViewController: UIViewController {
    
    var tamanio: String!
    var tipoMasa: String!
    var tipoQueso: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(tamanio) \(tipoMasa) \(tipoQueso)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
