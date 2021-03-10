//
//  ViewController.swift
//  Pokedex
//
//  Created by Jonathan Silva Figueroa on 09/03/21.
//  Copyright © 2021 Jonathan Silva Figueroa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pokemons = [Pokemon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lector = JsonReader()
        pokemons = lector.leerJson()
        print(pokemons)
    }


}

