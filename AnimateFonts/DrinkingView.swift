//
//  ProcessView.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct DrinkingView: View {
    
    let name: String
    let age: String
    let drinkingAge: Int
    
    init(name: String, age: String, drinkingAge: Int = 18) {
        self.name = name
        self.age = age
        self.drinkingAge = drinkingAge
    }
    
    var numericalAge: Int? {
        Int(age)
    }
    
    var text: String {
        if let numericalAge {
            if numericalAge > drinkingAge {
                return "You can drink responsibly."
            } else {
                return "Not Drinking Age "
            }
        } else {
            return "Invalid Age"
        }
    }
    
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.2)
                .ignoresSafeArea()
            
            Text(text)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}


#Preview {
    DrinkingView(name: "Carrington", age: "90")
}
