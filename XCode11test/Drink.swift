//
//  Drink.swift
//  XCode11test
//
//  Created by Oniel Rosario on 9/20/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import SwiftUI


struct Drink: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let description: String
    let category: Category
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
