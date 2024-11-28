//
//  Animationss.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI


struct AnimatedTextView: View {
    
    let text: String = "Hello, World!"
    var offset: CGSize {
        CGSize(width: 0, height: togglePosition ? 400 : 0)
    }
    
    @State private var togglePosition: Bool = false
    var color: Color {
        togglePosition ? .red : .blue
    }
    
    var font: Font {
        togglePosition ? .title : .caption
    }
    
    var rotate: CGFloat {
        togglePosition ? 360 : 0
    }
    
    var bgColor: Color {
        togglePosition ? .black : .gray
    }
    
    var body: some View {
        ZStack {
            
            bgColor
                .ignoresSafeArea()
            
            VStack {
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .rotationEffect(Angle(degrees: rotate))
                    .offset(offset)
                    .foregroundStyle(color)
                
                Spacer()
                
                Button {
                    withAnimation {
                        togglePosition.toggle()
                    }
                } label: {
                    Text("Animate")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .buttonStyle(.borderedProminent)
            }
        }
        
    }
}

#Preview {
    AnimatedTextView()
}
