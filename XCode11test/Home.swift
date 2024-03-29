//
//  ContentView.swift
//  XCode11test
//
//  Created by Oniel Rosario on 9/20/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var categories:[String: [Drink]] {
        .init(grouping: drinkData,
              by: {$0.category.rawValue}
        )
    }
    
    
    
    
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(), id: \String.self) { key in
                DrinkRow(categoryName: "\(key)".uppercased(),
                         drinks: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
        .navigationBarTitle("Coffee DB")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
