//
//  File.swift
//  pokemonApp
//
//  Created by Jindong Du on 12/11/23.
//

import Foundation

struct Pokemon: Decodable,Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let weight: Int
    let height: Int
    let attack: Int
    let defence: Int
    let description: Int
}
