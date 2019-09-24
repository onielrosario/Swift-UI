//
//  DrinkItem.swift
//  XCode11test
//
//  Created by Oniel Rosario on 9/20/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    var drink : Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(drink.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 175)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(drink.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(drink.description)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
