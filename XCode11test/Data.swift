//
//  Data.swift
//  XCode11test
//
//  Created by Oniel Rosario on 9/20/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation

let drinkData: [Drink] = load("drinks.json")


func load<T:Decodable>(_ filename: String, as type:T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("couldn't find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("couldn't load \(filename) from main bundle: \(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("could not parse \(filename) as \(T.self): \(error)")
    }
}
