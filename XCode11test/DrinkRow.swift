//
//  DrinkRow.swift
//  XCode11test
//
//  Created by Oniel Rosario on 9/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    var categoryName: String
    var drinks: [Drink]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.title)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach (self.drinks) { drink in
                        
                        NavigationLink(destination: DrinkDetail(drink: drink)) {
                            
                            DrinkItem(drink: drink)
                                .frame(width: 300)
                                .padding(.leading, 30)
                        }
                    }
                }
            }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
