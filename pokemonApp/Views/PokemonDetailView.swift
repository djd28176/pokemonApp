//
//  PokemonDetailView.swift
//  pokemonApp
//
//  Created by Jindong Du on 12/11/23.
//

import SwiftUI

let sampleNPoke = Pokemon(id: 1, name: "test", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", type: "fire", weight: 10, height: 10, attack: 10, defense: 10, description: "test description")
let sampleNVM = PokemonViewModel()
struct PokemonDetailView: View {
    let viewModel: PokemonViewModel
    let pokemon: Pokemon
    
    var body: some View {
        Text("\(pokemon.name)")
    }
}

#Preview {
    PokemonDetailView(viewModel: sampleNVM, pokemon: sampleNPoke)
}
