//
//  ContentView.swift
//  pokemonApp
//
//  Created by Jindong Du on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PokemonGridView()
        }
        .padding()
    }
}

#Preview {
    PokemonGridView()
}
