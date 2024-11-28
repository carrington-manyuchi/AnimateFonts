//
//  AlignModifier.swift
//  AnimateFonts
//
//  Created by Manyuchi, Carrington C on 2024/11/28.
//

import SwiftUI


struct AlignModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        
    }
    
    
}

struct Align_Modifier: View {
    var body: some View {
        Text("Hello, World!")
            .modifier(AlignModifier())
    }
}

#Preview {
    Align_Modifier()
}
