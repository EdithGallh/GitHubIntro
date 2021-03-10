//
//  JsonReader.swift
//  Pokedex
//
//  Created by Jonathan Silva Figueroa on 09/03/21.
//  Copyright © 2021 Jonathan Silva Figueroa. All rights reserved.
//

import Foundation

struct JsonReader {
    
    func leerJson() -> [Pokemon] {
        guard let pokedexPath = Bundle.main.path(forResource: "pokedex", ofType: "json") else { return [] }
        guard let pokedexData = NSData(contentsOfFile: pokedexPath) as Data? else { return [] }
        
        let json = try? JSONSerialization.jsonObject(with: pokedexData, options: .allowFragments)
        let pokedexDictionary = json as? [String: Any] ?? [:]

        let pokemonArray = pokedexDictionary["pokemon"] as? [[String: Any]] ?? []
        
        var pokemons = [Pokemon]()
        for dictionary in pokemonArray {
            let name = dictionary["name"] as? String ?? "Error"
            let id = dictionary["id"] as? Int ?? -1
            let num = dictionary["num"] as? String ?? "Error"
            
            let tipos = dictionary["type"] as? [String] ?? []
            
            var especie = [TipoPokemon]()
            for tipo in tipos {
                let tipoPokemon = TipoPokemon(rawValue: tipo) ?? TipoPokemon.Unknown
                especie.append(tipoPokemon)
            
            }
            
            let pokemon = Pokemon(name: name, img: "\(id)", num: num, type: especie)
            pokemons.append(pokemon)
        }
        return pokemons
    }
    
    
}
