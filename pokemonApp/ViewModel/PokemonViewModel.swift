//
//  PokemonViewModel.swift
//  pokemonApp
//
//  Created by Jindong Du on 12/11/23.
//
import Foundation
import SwiftUI
// view will update if the published variable is changed
class PokemonViewModel: ObservableObject{
    @Published var pokemon = [Pokemon]()
    
    //  create base url of the API
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    init(){
        fetchData()
    }
    
    func fetchData(){
        guard let url = URL(string: baseURL) else{return}
        
        URLSession.shared.dataTask(with: url){
            (data, response, error) in
            
            guard let data = data?.parseData(removeString: "null,") else{return}
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else{return}
            
            //store this data
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
    
    func backgroundColor(forType type: String) -> UIColor {
        switch type {
        case "fire": return .orange
        case "poison": return .purple
        case "water": return .blue
        case "electric": return .yellow
        case "psychic": return .brown
        case "normal": return .magenta
        case "ground": return .green
        case "flying": return .cyan
        case "fairy": return .systemTeal
        default: return .systemPink
        }
    }
    
}


extension Data{
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        
        guard let data = parsedDataString?.data(using: .utf8) else {return nil}
        
        return data
    }
}
