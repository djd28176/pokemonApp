//
//  PokemonGridView.swift
//  pokemonApp
//
//  Created by Jindong Du on 12/11/23.
//

import SwiftUI

struct PokemonGridView: View {
    
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.2),Color.pink.opacity(0.2)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView{
                    LazyVGrid(columns: gridItems, spacing: 16){
                        ForEach(viewModel.pokemon){
                            pokemon in
                            NavigationLink {
                                PokemonDetailView(viewModel: viewModel, pokemon: pokemon)
                            } label: {
                                PokeCell(pokemon: pokemon, viewModel: viewModel)
                            }

                        }
                    }
                }.navigationTitle("Pokemon Club \(viewModel.pokemon.count)")
            }
        }
    }
}

#Preview {
    PokemonGridView()
}
