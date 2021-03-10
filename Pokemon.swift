//
//  Pokemon.swift
//  Pokedex
//
//  Created by Jonathan Silva Figueroa on 09/03/21.
//  Copyright © 2021 Jonathan Silva Figueroa. All rights reserved.
//

import Foundation

enum TipoPokemon: String {
    case Grass
    case Poison
    case Fire
    case Water
    case Ice
    case Ground
    case Rock
    case Steel
    case Flying
    case Fairy
    case Dragon
    case Dark
    case Normal
    case Fighting
    case Ghost
    case Bug
    case Psychic
    case Electric
    case Unknown
}

struct Pokemon {
    let name: String
    let img: String
    let num: String
    let type: [TipoPokemon]
}
