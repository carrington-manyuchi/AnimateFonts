//
//  ContentView.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/26.
//

import SwiftUI

struct AnimateFonts: View {
    
    @State private var largeFont: Bool = false
    @State private var font: Font = .largeTitle
    
    var fonts: Font {
        return largeFont ? .largeTitle : .caption
    }
    
    var body: some View {
        ZStack {
            Color
                .purple
                .opacity(0.7)
                .ignoresSafeArea()
           
            VStack {
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .font(fonts)
                    .fontWeight(.bold)
                Spacer()
                
                Button {
                    withAnimation {
                        largeFont.toggle()
                    }
                } label: {
                    Text("Click Me")
                        .font(.title)
                        .fontWeight(.semibold)
                }

            }
            .padding()
        }
    }
}

#Preview {
    AnimateFonts()
}
