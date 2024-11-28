//
//  ExploreViewLibrary.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI

struct ExploreViewLibrary: View {
    
    let text: [String] = ["Exploring Views", "Hello", "SwiftUI", "AnimateFonts"]
    @State private var index = 0
    @State private var bgColor: Color = .cyan
    @State private var date: Date = Date()
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
                Form {
                    Section(header: Text("Notifications")) {
                        
                        Text(text[index])
                            .font(.largeTitle)
                            .padding()
                        
                        Button("A Button") {
                            index = (index + 1) % text.count
                        }
                    }
                        Section(header: Text("User Profiles")) {
                            
                            
                            ColorPicker("Title", selection: $bgColor)
                            
                            DatePicker(selection: $date) {
                                Text("Date")
                            }
                        }
                    
                    }
                    .padding()
            
        }
    }
}

#Preview {
    ExploreViewLibrary()
}
